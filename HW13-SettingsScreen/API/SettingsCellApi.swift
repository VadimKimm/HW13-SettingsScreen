//
//  SettingsCellApi.swift
//  HW13-SettingsScreen
//
//  Created by Vadim Kim on 05.06.2022.
//

import UIKit

class SettingsCellApi {

    static let dictionaryOfIcons: [String: UIImage?] = [
        "airplane": UIImage(systemName: "airplane"),
        "wifi": UIImage(systemName: "wifi"),
        "bluetooth": UIImage(named: "bluetooth"),
        "cellular": UIImage(systemName: "antenna.radiowaves.left.and.right"),
        "hotspot": UIImage(systemName: "personalhotspot"),
        "vpn": UIImage(named: "vpn"),

        "notifications": UIImage(systemName: "bell.badge.fill"),
        "sounds": UIImage(systemName: "speaker.wave.2.fill"),
        "focus": UIImage(systemName: "moon.fill"),
        "screenTime": UIImage(systemName: "hourglass"),

        "general": UIImage(systemName: "gear"),
        "controlCenter": UIImage(systemName: "command"),
        "display": UIImage(systemName: "textformat.size"),
        "homeScreen": UIImage(systemName: "house"),
        "accessibility": UIImage(systemName: "figure.wave.circle"),
        "wallpaper": UIImage(named: "wallpaper"),
        "siri": UIImage(named: "siri"),
        "faceId": UIImage(systemName: "faceid"),
        "emergencySos": UIImage(named: "sos"),
        "exposure": UIImage(systemName: "sun.min.fill"),
        "battery": UIImage(systemName: "battery.100"),
        "privacy": UIImage(systemName: "hand.raised.fill"),

        "notificationsCount": UIImage(systemName: "1.circle.fill"),
    ]

    static func getCellsArray(_ dictionaryOfIcons: [String: UIImage?] = SettingsCellApi.dictionaryOfIcons) -> [Sections] {

        var firstSection = [CellType]()
        var secondSection = [CellType]()
        var thirdSection = [CellType]()

        var modelsArray = [Sections]()

        firstSection = [
            .switchCell(SwitchCellModel(icon: dictionaryOfIcons["airplane"] ?? nil,
                                        backgroundColor: .systemOrange,
                                        labelText: "Авиарежим",
                                        _switch: false)),
            .simpleCell(SimpleCellModel(icon: dictionaryOfIcons["airplane"] ?? nil,
                                        backgroundColor: .systemOrange,
                                        labelText: "Авиарежим")),
            .extendedInfoCell(ExtendedInfoCellModel(icon: dictionaryOfIcons["wifi"] ?? nil,
                                        backgroundColor: .systemOrange,
                                        labelText: "Wi-Fi",
                                        sideLabelText: "Не подключено")),
        ]

        secondSection = [
            .simpleCell(SimpleCellModel(icon: dictionaryOfIcons["airplane"] ?? nil,
                                        backgroundColor: .systemOrange,
                                        labelText: "Авиарежим")),
        ]

        thirdSection = [
            .notificationCell(NotificationCellModel(icon: dictionaryOfIcons["airplane"] ?? nil,
                                                    backgroundColor: .gray,
                                                    labelText: "Основные",
                                                    notificationsIndicator: dictionaryOfIcons["notificationsCount"] ?? nil)),
            .simpleCell(SimpleCellModel(icon: dictionaryOfIcons["airplane"] ?? nil,
                                        backgroundColor: .systemOrange,
                                        labelText: "Авиарежим")),
        ]

        modelsArray = [
            Sections(items: firstSection),
            Sections(items: secondSection),
            Sections(items: thirdSection)
        ]

        return modelsArray
    }
}
