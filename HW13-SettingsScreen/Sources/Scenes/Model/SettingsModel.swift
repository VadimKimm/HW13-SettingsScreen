//
//  SettingsModel.swift
//  HW13-SettingsScreen
//
//  Created by Vadim Kim on 05.06.2022.
//

import UIKit

class SettingsModel {

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

        "notificationsCount": UIImage(systemName: "1.circle.fill")
    ]

    func createModels(_ dictionaryOfIcons: [String: UIImage?] = SettingsModel.dictionaryOfIcons) -> [Sections] {

        var firstSection = [CellType]()
        var secondSection = [CellType]()
        var thirdSection = [CellType]()

        var models = [Sections]()

        firstSection = [
            .switchCell(SwitchCellModel(icon: dictionaryOfIcons["airplane"] ?? nil,
                                        backgroundColor: .systemOrange,
                                        labelText: "Авиарежим",
                                        _switch: false)),
            .extendedInfoCell(ExtendedInfoCellModel(icon: dictionaryOfIcons["wifi"] ?? nil,
                                                     backgroundColor: .systemBlue,
                                                     labelText: "Wi-Fi",
                                                     sideLabelText: "Не подключено")),
            .extendedInfoCell(ExtendedInfoCellModel(icon: dictionaryOfIcons["bluetooth"] ?? nil,
                                                     backgroundColor: .clear,
                                                     labelText: "Bluetooth",
                                                     sideLabelText: "Вкл.")),
            .simpleCell(SimpleCellModel(icon: dictionaryOfIcons["cellular"] ?? nil,
                                       backgroundColor: .systemGreen,
                                       labelText: "Сотовая связь")),
            .simpleCell(SimpleCellModel(icon: dictionaryOfIcons["hotspot"] ?? nil,
                                               backgroundColor: .systemGreen,
                                               labelText: "Режим модема")),
            .switchCell(SwitchCellModel(icon: dictionaryOfIcons["vpn"] ?? nil,
                                        backgroundColor: Colors.customBlue,
                                        labelText: "VPN",
                                        _switch: false))
        ]

        secondSection = [
            .simpleCell(SimpleCellModel(icon: dictionaryOfIcons["notifications"] ?? nil,
                                       backgroundColor: .systemRed,
                                       labelText: "Уведомления")),
            .simpleCell(SimpleCellModel(icon: dictionaryOfIcons["sounds"] ?? nil,
                                       backgroundColor: .systemRed,
                                       labelText: "Звуки, тактильные сигналы")),
            .simpleCell(SimpleCellModel(icon: dictionaryOfIcons["focus"] ?? nil,
                                       backgroundColor: Colors.customPurple,
                                       labelText: "Не беспокоить")),
            .simpleCell(SimpleCellModel(icon: dictionaryOfIcons["screenTime"] ?? nil,
                                       backgroundColor: Colors.customPurple,
                                       labelText: "Экранное время"))
        ]

        thirdSection = [
            .notificationCell(NotificationCellModel(icon: dictionaryOfIcons["general"] ?? nil,
                                                    backgroundColor: .gray,
                                                    labelText: "Основные",
                                                    notificationsIndicator: dictionaryOfIcons["notificationsCount"] ?? nil)),
            .simpleCell(SimpleCellModel(icon: dictionaryOfIcons["controlCenter"] ?? nil,
                                       backgroundColor: .gray,
                                       labelText: "Пункт управления")),
            .simpleCell(SimpleCellModel(icon: dictionaryOfIcons["display"] ?? nil,
                                       backgroundColor: .systemBlue,
                                       labelText: "Экран и яркость")),
            .simpleCell(SimpleCellModel(icon: dictionaryOfIcons["homeScreen"] ?? nil,
                                       backgroundColor: .systemBlue,
                                       labelText: "Экран «Домой»")),
            .simpleCell(SimpleCellModel(icon: dictionaryOfIcons["accessibility"] ?? nil,
                                       backgroundColor: .systemBlue,
                                       labelText: "Универсальный доступ")),
            .simpleCell(SimpleCellModel(icon: dictionaryOfIcons["wallpaper"] ?? nil,
                                       backgroundColor: .clear,
                                       labelText: "Обои")),
            .simpleCell(SimpleCellModel(icon: dictionaryOfIcons["siri"] ?? nil,
                                       backgroundColor: .clear,
                                       labelText: "Siri и поиск")),
            .simpleCell(SimpleCellModel(icon: dictionaryOfIcons["faceId"] ?? nil,
                                       backgroundColor: .systemGreen,
                                       labelText: "Face ID и код-пароль")),
            .simpleCell(SimpleCellModel(icon: dictionaryOfIcons["emergencySos"] ?? nil,
                                       backgroundColor: .clear,
                                       labelText: "Экстренный вызов - SOS")),
            .simpleCell(SimpleCellModel(icon: dictionaryOfIcons["exposure"] ?? nil,
                                       backgroundColor: .red,
                                       labelText: "Уведомление о контакте")),
            .simpleCell(SimpleCellModel(icon: dictionaryOfIcons["battery"] ?? nil,
                                       backgroundColor: .systemGreen,
                                       labelText: "Аккумулятор")),
            .simpleCell(SimpleCellModel(icon: dictionaryOfIcons["privacy"] ?? nil,
                                       backgroundColor: .systemBlue,
                                       labelText: "Конфиденциальность"))
        ]

        models = [
            Sections(items: firstSection),
            Sections(items: secondSection),
            Sections(items: thirdSection)
        ]

        return models
    }
}
