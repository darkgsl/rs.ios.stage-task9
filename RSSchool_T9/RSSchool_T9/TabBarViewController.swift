//
// 📰 🐸 
// Project: RSSchool_T9
// 
// Author: Sergey Gomolko
// On: 7/28/21
// 
// Copyright © 2021 RSSchool. All rights reserved.

import UIKit

class TabBarViewController: UITabBarController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
   //print("ViewDidLoad TabBarViewController")
//    self.TabBarViewController.tabBar.
//    UITabBarAppearance.backgroundColor = .red
//
//    let appearance = UITabBarAppearance()
//    appearance.selectionIndicatorTintColor = .red
//    appearance.backgroundColor = .green
//
//
    setupTabs()

        // Do any additional setup after loading the view.
    }
  //MARK: - setup tabs
    func setupTabs() {
      var tabBarControllers: [UIViewController] = []
      //let xxxx :  UIImage = #imageLiteral(resourceName: "Screen Shot 2021-06-25 at 15.57.54")

      
      //hit test and first responder
      let firstViewController = FirstViewController()
       // UIViewController()
      
      firstViewController.tabBarItem = .init(title: "Items", image: UIImage(systemName: "square.grid.2x2"), selectedImage: UIImage.init(systemName: "square.grid.2x2"))
      //drag and drop
      
      let secondViewController  = UINavigationController.init(rootViewController: SecondViewController())
        // SecondViewController()
       // UIViewController()
      secondViewController.tabBarItem = .init(title: "Settings", image: UIImage.init(systemName: "gear"), selectedImage: UIImage.init(systemName: "gear"))
      
      //костыль чтобы запустить жизенный цикл
        //let _ = secondViewController.view
      
      tabBarControllers += [firstViewController, secondViewController]
      
     // self.tabBar.backgroundColor = .green
     // self.tabBar.selectionIndicatorTintColor = .red
      
      
      self.viewControllers = tabBarControllers
      //self.selectedIndex = 3
      self.customizableViewControllers = nil
      
    }
  

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
