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
    ]

    static func getCellsArray(_ dictionaryOfIcons: [String: UIImage?] = SettingsCellApi.dictionaryOfIcons) -> [Sections] {

        var firstSection = [CellType]()
        var secondSection = [CellType]()
        var thirdSection = [CellType]()

        var modelsArray = [Sections]()

        firstSection = [
            .simpleCell(SimpleCellModel(icon: dictionaryOfIcons["airplane"] ?? nil,
                                        backgroundColor: .systemOrange,
                                        labelText: "Авиарежим")),
            .simpleCell(SimpleCellModel(icon: dictionaryOfIcons["wifi"] ?? nil,
                                        backgroundColor: .systemOrange,
                                        labelText: "Wi-Fi")),
        ]

        secondSection = [
            .simpleCell(SimpleCellModel(icon: dictionaryOfIcons["airplane"] ?? nil,
                                        backgroundColor: .systemOrange,
                                        labelText: "Авиарежим")),
        ]

        thirdSection = [
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
