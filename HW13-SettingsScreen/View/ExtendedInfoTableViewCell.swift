//
//  ExtendedInfoTableViewCell.swift
//  HW13-SettingsScreen
//
//  Created by Vadim Kim on 05.06.2022.
//

import UIKit

class ExtendedInfoTableViewCell: UITableViewCell {

    //MARK: - Cell objects -

    static let identifier = "ExtendedInfoTableViewCell"

    private let iconImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFill
        image.tintColor = .white
        return image
    }()

    private let iconImageContainer: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.masksToBounds = true
        view.clipsToBounds = true
        view.layer.cornerRadius = 7
        return view
    }()

    private let label: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: Metrics.labelFontSize)
        label.numberOfLines = 1
        return label
    }()

    private let arrowImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFill
        image.tintColor = .systemGray2
        image.clipsToBounds = true
        return image
    }()

    private let sideLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: Metrics.sideLabelFontSize)
        label.textColor = .systemGray
        label.numberOfLines = 1
        return label
    }()

    //MARK: - Setting up TableViewCell -

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        contentView.addSubview(iconImageContainer)
        iconImageContainer.addSubview(iconImageView)
        contentView.addSubview(label)
        contentView.addSubview(arrowImageView)
        contentView.addSubview(sideLabel)
        contentView.clipsToBounds = true

    }

    override func layoutSubviews() {
        super.layoutSubviews()

        iconImageContainer.snp.makeConstraints { make in
            make.width.equalTo(contentView.snp.height).offset(Metrics.iconImageContainerWidthOffset)
            make.height.equalTo(contentView.snp.height).offset(Metrics.iconImageContainerHeightOffset)
            make.left.equalTo(contentView.snp.left).offset(Metrics.iconImageContainerLeftOffset)
            make.centerY.equalTo(contentView.snp.centerY)
        }

        iconImageView.snp.makeConstraints { make in
            make.centerY.equalTo(iconImageContainer.snp.centerY)
            make.centerX.equalTo(iconImageContainer.snp.centerX)
        }

        label.snp.makeConstraints { make in
            make.centerY.equalTo(iconImageContainer.snp.centerY)
            make.left.equalTo(iconImageContainer.snp.right).offset(Metrics.labelLeftOffset)
        }

        arrowImageView.snp.makeConstraints { make in
            make.centerY.equalTo(iconImageContainer.snp.centerY)
            make.right.equalTo(contentView.snp.right).offset(Metrics.arrowImageViewRightOffset)
        }

        sideLabel.snp.makeConstraints { make in
            make.centerY.equalTo(contentView.snp.centerY)
            make.right.equalTo(arrowImageView.snp.left).offset(Metrics.sideLabelRightOffset)
        }
    }

    func configure(with model: ExtendedInfoCellModel) {
        iconImageView.image = model.icon
        iconImageContainer.backgroundColor = model.backgroundColor
        label.text = model.labelText
        arrowImageView.image = model.arrowImage
        sideLabel.text = model.sideLabelText
    }
}
