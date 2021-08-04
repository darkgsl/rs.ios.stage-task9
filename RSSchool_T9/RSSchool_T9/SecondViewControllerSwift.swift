//
// 📰 🐸 
// Project: RSSchool_T9
// 
// Author: Sergey Gomolko
// On: 7/28/21
// 
// Copyright © 2021 RSSchool. All rights reserved.

import UIKit

class SecondViewControllerSwift: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
      self.view.backgroundColor = .yellow
      print("ViewDidLoad SecondViewControllerSwift")
        // Do any additional setup after loading the view.
      
      setupView()
    }
    
  //MARK: - setup view
    func setupView() {
      self.navigationItem.title = "Settings"
      
          self.navigationItem.title = "Artist";
      let methodName: String = "nextTapped"
      let sel = Selector(methodName)
      let next = UIBarButtonItem.init(title: "Drawing", style: .plain, target: self, action: sel)
        //  UIBarButtonItem *next = [[UIBarButtonItem alloc] initWithTitle:@"Drawing"
                                                                 //  style:UIBarButtonItemStylePlain
                                                                //  target:self
                                                               //   action:@selector(nextTapped:)];
      //UIBarButtonItem.init(title: <#T##String?#>, style: UIBarButtonItem.Style, target: <#T##Any?#>, action: <#T##Selector?#>
          self.navigationItem.rightBarButtonItems = [next];
        }

        //MARK: - Selectors navigation bar
        func nextTapped() {
         // SecondViewController *viewController = [SecondViewController new];
         // viewController.drawning = globalPicture;
          
        //  [self.navigationController pushViewController:viewController animated:YES];
        }

      
      
      //self.navigationItem.col
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
