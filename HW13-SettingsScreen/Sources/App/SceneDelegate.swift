//
//  SceneDelegate.swift
//  HW13-SettingsScreen
//
//  Created by Vadim Kim on 05.06.2022.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }

        let window = UIWindow(windowScene: windowScene)
        let navigationContoller = UINavigationController(rootViewController: SettingsController())

        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = UIColor.secondarySystemBackground
        navigationContoller.navigationBar.scrollEdgeAppearance = appearance

        window.rootViewController = navigationContoller
        window.makeKeyAndVisible()
        self.window = window
    }
}

