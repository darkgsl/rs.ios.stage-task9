//
// 📰 🐸 
// Project: RSSchool_T9
// 
// Author: Sergey Gomolko
// On: 7/31/21
// 
// Copyright © 2021 RSSchool. All rights reserved.

import UIKit
//import "SecondViewController.h"
//glo

class StoryViewController: UIViewController {
  var closeButton : UIButton!
  var scrollView: UIScrollView!
  let data = FillingData.data.first
  
    override func viewDidLoad() {
        super.viewDidLoad()
      view.backgroundColor = globalColor.color
    // modalPresentationStyle = .fullScreen
     // let data = FillingData.data.first
      setupViews()
      
        // Do any additional setup after loading the view.
    }
    
  override func viewWillLayoutSubviews() {
    super.viewWillLayoutSubviews()
  //  self.closeButton.layer.cornerRadius = self.closeButton.frame.width / 2
  }
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
  //  self.closeButton.layer.cornerRadius = self.closeButton.frame.width / 2
  }
  override func viewDidLayoutSubviews() {
    //self.closeButton.layer.cornerRadius = self.closeButton.frame.width / 2
  // self.scrollView.contentSize = CGSize(width: view.frame.width,
  //                                       height: view.frame.height)
    
   // self.closeButton.frame.origin.x = self.scrollView.frame.width - 45
   // self.closeButton.frame.origin.y = 30
  }
  
  func setupViews(){
    
    let scrollView = UIScrollView()
  
    scrollView.translatesAutoresizingMaskIntoConstraints = false
    
    self.scrollView = scrollView
    self.scrollView.delegate = self
    
    self.view.addSubview(scrollView)
    
    NSLayoutConstraint.activate([
      scrollView.topAnchor.constraint(equalTo: view.topAnchor),
      scrollView.bottomAnchor.constraint(equalTo: view.topAnchor),
      scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
      scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
    ])
      /*
     
     готовим элементы
     добавляем на скроллвью
     добавляем контсррэйты
     
     считаем размеры элементов (высоту)
     задаем размеры скролвью
     */
    
    let button = UIButton.init(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
    button.setTitle("X", for: .normal)
    button.titleLabel?.font = UIFont.systemFont(ofSize: 18)

    button.setTitleColor(.white, for: .normal)

    button.layer.borderWidth = 1.0
    button.layer.borderColor = UIColor.white.cgColor
    button.layer.backgroundColor = UIColor.black.cgColor
    button.translatesAutoresizingMaskIntoConstraints = false
    
   self.scrollView.addSubview(button)
  
    NSLayoutConstraint.activate([
     // button.heightAnchor.constraint(equalToConstant: 40),
     // button.widthAnchor.constraint(equalToConstant: 40),
      button.topAnchor.constraint(equalTo: self.scrollView.topAnchor,constant: 30),
     // button.centerXAnchor.constraint(equalTo: self.scrollView.centerXAnchor),
     button.trailingAnchor.constraint(equalTo: self.scrollView.trailingAnchor, constant: 25),
      button.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 25),
      button.bottomAnchor.constraint(equalTo: self.scrollView.bottomAnchor, constant: 18)
     // button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor) //,
    //  button.leadingAnchor.constraint(equalTo: self.view.leadingAnchor)
      
      
    ])
    
   // button.layer.cornerRadius = 25
    button.addTarget(self, action: #selector(closeButtonTouched(_:)), for: .touchUpInside)
    
   self.closeButton = button

    
    makeImageView()
   // self.view.addSubview(scrollView)
    
  }
  func makeImageView(){
    //   .story(Story(coverImage: .init("story-1"), title: .from("s1-title"), text: .from("s1-text"), paths: [.story1path1, .story1path2, .story1path3])),
    let subView = UIView()
    let image = UIImage(named: "story-1")
    let imageView = UIImageView(image: image)
    imageView.layer.borderWidth = 1.0
    imageView.layer.borderColor = UIColor.white.cgColor
    imageView.layer.cornerRadius = 8.0
    imageView.translatesAutoresizingMaskIntoConstraints = false
    
    subView.addSubview(imageView)
    
    NSLayoutConstraint.activate([
      imageView.topAnchor.constraint(equalTo: subView.topAnchor),
      imageView.bottomAnchor.constraint(equalTo: subView.bottomAnchor, constant: -58.0),
      imageView.leadingAnchor.constraint(equalTo: subView.leadingAnchor),
      imageView.trailingAnchor.constraint(equalTo: subView.trailingAnchor)
    ])
    
    
    
    //self.scrollView.addSubview(subView)
    
    
    
  }
  
  
  @objc func closeButtonTouched(_ sender: UIButton) {
    presentingViewController?.dismiss(animated: true, completion: nil)
   // [self.presentingViewController dismissViewControllerAnimated:true completion:nil];
    print("closeButtonTouched tapped")
    
  }
  

}
extension StoryViewController: UIScrollViewDelegate {
  
}
