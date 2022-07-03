//
//  SettingsViewController.swift
//  HW13-SettingsScreen
//
//  Created by Vadim Kim on 05.06.2022.
//

import UIKit
import SnapKit

class SettingsController: UIViewController {

    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)

        tableView.dataSource = self
        tableView.delegate = self

        tableView.register(SimpleTableViewCell.self, forCellReuseIdentifier: SimpleTableViewCell.identifier)
        tableView.register(ExtendedInfoTableViewCell.self, forCellReuseIdentifier: ExtendedInfoTableViewCell.identifier)
        tableView.register(NotificationTableViewCell.self, forCellReuseIdentifier: NotificationTableViewCell.identifier)
        tableView.register(SwitchTableViewCell.self, forCellReuseIdentifier: SwitchTableViewCell.identifier)

        return tableView
    }()

    var modelsArray = SettingsCellApi.getCellsArray()
    
    //MARK: - Lifecycle -

    override func viewDidLoad() {
        super.viewDidLoad()

        setupHierarchy()
        setupLayout()
        setupView()
    }

    //MARK: - Settings -

    private func setupHierarchy() {
        view.addSubview(tableView)
    }

    private func setupLayout() {
        tableView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }

    private func setupView() {
        setupNavigationBarAppearance()
    }

    //MARK: - Private functions -

    private func setupNavigationBarAppearance() {
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = UIColor.secondarySystemBackground
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        title = "Настройки"
    }
}

