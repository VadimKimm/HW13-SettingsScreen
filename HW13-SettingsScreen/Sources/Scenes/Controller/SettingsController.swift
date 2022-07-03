//
//  SettingsViewController.swift
//  HW13-SettingsScreen
//
//  Created by Vadim Kim on 05.06.2022.
//

import UIKit
import SnapKit

class SettingsController: UIViewController {

    var model: SettingsModel?

    private var settingsView: SettingsView? {
        guard isViewLoaded else { return nil }
        return view as? SettingsView
    }
    
    //MARK: - Lifecycle -

    override func viewDidLoad() {
        super.viewDidLoad()

        view = SettingsView()
        model = SettingsModel()

        configureView()
    }
}

// MARK: - Configurations -

private extension SettingsController {
    func configureView() {
        title = Metrics.navigationBarTitle

        guard let models = model?.createModels() else { return }
        settingsView?.configure(with: models)
    }
}
