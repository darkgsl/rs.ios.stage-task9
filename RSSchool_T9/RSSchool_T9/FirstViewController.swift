//
// 📰 🐸 
// Project: RSSchool_T9
// 
// Author: Sergey Gomolko
// On: 7/28/21
// 
// Copyright © 2021 RSSchool. All rights reserved.

import UIKit


class FirstViewController: UIViewController {
  var isPortrait = true
  var label : UILabel!
  var views : [UIImage] = []
  var collectionView : UICollectionView!
  let cellWithReuseIdentifier = "CellWithReuseIdentifier"
  
  var numberOfColumns = 2
  
    override func viewDidLoad() {
        super.viewDidLoad()

      view.backgroundColor = UIColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1)
//      let gradient = CAGradientLayer()
//      gradient.frame = view.bounds
//      let startColor = UIColor(red: 30/255, green: 113/255, blue: 79/255, alpha: 0).cgColor
//      let endColor = UIColor.black.cgColor
//      gradient.colors = [startColor, endColor]
//      view.layer.insertSublayer(gradient, at: 0)
      
      
      
      
      setupScrollView()
      createTestViews()

    }

  func createTestViews(){
    /*
    switch <#value#> {
    case <#pattern#>:
      <#code#>
    default:
      <#code#>
    }
 */
    //let data = FillingData.data
    /*
    FillingData.data.forEach {
      switch $0 {
      case .gallery(let gallery):
        gallery.
        break
      case .story(let story):
        break
      }

    }
 */
    
    
    for _ in 1...10 {
      var imageView = UIImage()
      
      
      /*
      testView.layer.borderWidth = 2
      testView.layer.borderColor = UIColor.black.cgColor
      
      let testView = UIView()
          testView.backgroundColor = .blue
          testView.layer.borderWidth = 2
          testView.layer.borderColor = UIColor.black.cgColor
      testView.translatesAutoresizingMaskIntoConstraints = false
      */
      imageView = #imageLiteral(resourceName: "story-1")
      
      self.views.append(imageView)
    }
}
    
  //MARK:-  Private views methods
  func setupScrollView(){
    let collectionViewlayot = UICollectionViewFlowLayout()
    collectionViewlayot.sectionInset = UIEdgeInsets(top: 40, left: 20, bottom: 30, right: 20)
   // collectionViewlayot.itemSize = CGSize(width: 170, height: 210)
    collectionViewlayot.minimumInteritemSpacing = 16.0
    collectionViewlayot.minimumLineSpacing = 30.0
    
    
    let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: collectionViewlayot)
    collectionView.backgroundColor = UIColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1)

    self.collectionView = collectionView
    self.collectionView.translatesAutoresizingMaskIntoConstraints = false
    self.collectionView.insetsLayoutMarginsFromSafeArea = true
    
    self.collectionView.delegate = self
    self.collectionView.dataSource = self
    
    self.collectionView.register(RSCollectionViewCell.self, forCellWithReuseIdentifier: cellWithReuseIdentifier)
    
    self.view.addSubview(collectionView)
    NSLayoutConstraint.activate([
      self.collectionView.frameLayoutGuide.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
      self.collectionView.frameLayoutGuide.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor),
      self.collectionView.frameLayoutGuide.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor),
      self.collectionView.frameLayoutGuide.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor),
    ])
  }
  func setupViews(){
    self.view.backgroundColor = UIColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1)

    let label : UILabel = .init()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = "something"
    self.label = label
    self.view.addSubview(label)
    
    NSLayoutConstraint.activate([
      self.label.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 100),
      self.label.centerXAnchor.constraint(equalTo: self.view.centerXAnchor)
    ])

    let button = UIButton.init()
   // button.frame = .init(x: 50, y: 50, width: 100, height: 100)
    button.setTitle("!!!!!", for: .normal)
    button.titleLabel?.text = "Tap me 1111234567"
    button.contentEdgeInsets = UIEdgeInsets(top: 5.1, left:5.1, bottom: 5.1, right: 5.1)
    //button.colo
    button.tintColor = .black
    button.backgroundColor = .yellow
   // button.set
    button.setTitleColor(.black, for: .normal)
    
    
    button.layer.borderWidth = 2.0
    
    button.layer.borderColor = UIColor.black.cgColor
    button.translatesAutoresizingMaskIntoConstraints = false
    
   // self.view.setNeedsDisplay()
    self.view.addSubview(button)
    
    NSLayoutConstraint.activate([
      button.topAnchor.constraint(equalTo: self.label.topAnchor, constant: 100),
      button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
      button.leadingAnchor.constraint(equalTo: self.view.leadingAnchor)
      
      
    ])
    button.addTarget(self, action: #selector(saveAction(_:)), for: .touchUpInside)
  }
  
  @objc func saveAction(_ sender: UIButton) {
      //print("button tapped")
    let controller = StoryViewController()
    controller.modalPresentationStyle = .fullScreen // .overCurrentContext
    controller.modalTransitionStyle = .coverVertical
    //modalPresentationStyle = .fullScreen
    present(controller, animated: true) {
     // print("window was open")

      
    }
/*
     ModalViewController *childVC = [ModalViewController new];
     [self addChildViewController:childVC];
     CGRect rect = CGRectMake(0, 375, self.view.bounds.size.width, self.view.bounds.size.height);
     childVC.view.frame = rect;
     [self.view addSubview:childVC.view];
     [childVC didMoveToParentViewController:self];
     */
    
    
  }
    func hideChild(_ controller: UIViewController) {
        controller.willMove(toParent: nil)
        controller.view.removeFromSuperview()
        controller.removeFromParent()
    }
  
}
extension FirstViewController: UICollectionViewDelegate {


}
extension FirstViewController: UICollectionViewDelegateFlowLayout {
  func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize{
    //в портретном режиме не вмещается целиком. сделать проверку на compactHeight
    // плюс смещается текст
    if traitCollection.verticalSizeClass == .regular {
      let wigth = (collectionView.frame.size.width - 60.0) / CGFloat (numberOfColumns)
      //print(wigth)
      return CGSize(width: wigth, height: wigth * 1.22)
    } else {
      let height = (collectionView.frame.size.height - 60.0)
      return CGSize(width: height * 0.88, height: height )
    }
    
//    let hight = (collectionView.frame.size.height - 20.0)
//    let wigth = (collectionView.frame.size.width - 60.0) / CGFloat (numberOfColumns)
//    print(wigth)
//    return CGSize(width: wigth, height: wigth * 1.22)
  }
  
}
extension FirstViewController: UICollectionViewDataSource {

  
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    //views.count
    FillingData.data.count
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    /*
    let myCell = collectionView.dequeueReusableCell(withReuseIdentifier: cellWithReuseIdentifier, for: indexPath)
    myCell.backgroundColor = UIColor.blue
     myCell.addSubview(self.views[indexPath.row])
     return myCell
     */
    let cell: RSCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: cellWithReuseIdentifier, for: indexPath) as! RSCollectionViewCell
    var image : UIImage?
    var title : String?
    var type : String?
    
    let data = FillingData.data[indexPath.row]
    switch data {
    case let .gallery(gallery):
      image = gallery.coverImage
      title = gallery.title
      type = "Gallery"
      
    case let .story(story):
      image = story.coverImage
      title =  story.title //   String.from( story.title)
      type = "Story"
    }
    
    cell.imageView?.image = image
    cell.type?.text = type
    cell.caption?.text = title
    
    return cell
    
  }

  
  
}
//MARK: - rotate device
extension FirstViewController {
  override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
   // print("rotation change")
  }
 
  override func willTransition(to newCollection: UITraitCollection, with coordinator: UIViewControllerTransitionCoordinator) {
   // print("willTransition")
    self.collectionView.collectionViewLayout.invalidateLayout()
    self.view.setNeedsDisplay()
  }
  //override var traitCollection: UITraitCollection
  
}
