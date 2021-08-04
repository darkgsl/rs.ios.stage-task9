//
// 📰 🐸
// Project: RSSchool_T9
//
// Author: Uladzislau Volchyk
// On: 23.07.21
//
// Copyright © 2021 RSSchool. All rights reserved.

import UIKit
 

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
     // UIView.appearance().backgroundColor = UIColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1)
     // UIButton.appearance().tintColor = .black
    
      UITabBar.appearance().tintColor = #colorLiteral(red: 1, green: 0, blue: 0, alpha: 1)
      UITabBar.appearance().unselectedItemTintColor = #colorLiteral(red: 0.2352941176, green: 0.2352941176, blue: 0.262745098, alpha: 0.6)
      UITabBar.appearance().barTintColor = .white
      
      let font = UIFont.systemFont(ofSize: 10)
      let attributes = [NSAttributedString.Key.font: font]
      UITabBarItem.appearance().setTitleTextAttributes(attributes, for: .normal)
      
      UINavigationBar.appearance().tintColor = .black
      UINavigationBar.appearance().barTintColor = .white
      
      let fontNavigationBar = UIFont.systemFont(ofSize: 17)
           
      //let attributesNavigationBar = [NSAttributedString.Key.font: fontNavigationBar]
      
      let attributesNavigationBar: [NSAttributedString.Key: Any] = [
          .font: fontNavigationBar,
          .foregroundColor: UIColor.black,
      ]
      UINavigationBar.appearance().titleTextAttributes = attributesNavigationBar
     
      
      guard let windowScene = (scene as? UIWindowScene) else { return }
          
      window = UIWindow(windowScene: windowScene)
      window?.rootViewController =  TabBarViewController()
      window?.makeKeyAndVisible()
    }
}

