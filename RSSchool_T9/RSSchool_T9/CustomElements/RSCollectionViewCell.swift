//
// 📰 🐸 
// Project: RSSchool_T9
// 
// Author: Sergey Gomolko
// On: 8/3/21
// 
// Copyright © 2021 RSSchool. All rights reserved.

import UIKit

class RSCollectionViewCell: UICollectionViewCell {
  var imageView : UIImageView!
  var caption : UILabel!
  var type : UILabel!
  
  init() {
    super.init(frame: .zero)
    setup()
  }
  override init(frame: CGRect) {
    super.init(frame: frame)
    setup()
  }
  
  required init?(coder: NSCoder) {
    super.init(coder: coder)
    setup()
  }
  func setup(){
    setupRootView()
    setupImageViewWithGradient()
    setupLabels(imageView)
  }
  
  
  //MARK: - priva methoda
  fileprivate func setupRootView(){
    backgroundColor =  .white
    layer.borderWidth = 1
    layer.borderColor = UIColor.black.cgColor
    layer.cornerRadius = 18
  }
  fileprivate func setupLabels(_ imageView: UIImageView) {
    //setup labels
    
    
    let title = UILabel()
    title.backgroundColor = .clear
    title.numberOfLines = 1
    title.textAlignment = .left
    let placeHolder = "placeholder"
    
    //set font (color, size , font)
    let font = UIFont(name: "Rockwell", size: 16) ?? UIFont.systemFont(ofSize: 16)
    //let font = UIFont.systemFont(ofSize: 72)
    let foregroundColor = UIColor.white
    //title.textColor = .black
    
    let attributes: [NSAttributedString.Key: Any] = [
      .font: font,
      .foregroundColor: foregroundColor
    ]
    //let attributes = [NSAttributedString.Key.font: font]
    let attributedText = NSAttributedString(string: placeHolder, attributes: attributes)
    title.attributedText = attributedText
    title.lineBreakMode = .byTruncatingTail
    
    
    
    title.translatesAutoresizingMaskIntoConstraints = false
    self.caption = title
    
    //addSubview(title)
    imageView.addSubview(title)
    NSLayoutConstraint.activate([
      title.topAnchor.constraint(lessThanOrEqualTo: imageView.topAnchor, constant: 151),
      title.bottomAnchor.constraint(equalTo: imageView.bottomAnchor, constant: -30),
      title.trailingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: -10),
      title.leadingAnchor.constraint(equalTo: imageView.leadingAnchor, constant: 10)
    ])
    
    
    let type = UILabel()
    
    type.backgroundColor = .clear
    type.numberOfLines = 1
    type.textAlignment = .left
    //let placeHolder = "placeholder"
    
    //set font (color, size , font)
    let fontType = UIFont(name: "Rockwell", size: 12) ?? UIFont.systemFont(ofSize: 12)
    //let font = UIFont.systemFont(ofSize: 72)
    let foregroundColorType = UIColor.init(red: 182 / 255, green: 182 / 255, blue: 182 / 255, alpha: 1)
    //title.textColor = .black
    
    let attributeType : [NSAttributedString.Key: Any] = [
      .font: fontType,
      .foregroundColor: foregroundColorType
    ]
    //let attributes = [NSAttributedString.Key.font: font]
    let attributedTextType = NSAttributedString(string: placeHolder, attributes: attributeType)
    type.attributedText = attributedTextType
    type.lineBreakMode = .byTruncatingTail
    
    
    
    type.translatesAutoresizingMaskIntoConstraints = false
    self.type = type
    //addSubview(type)
    imageView.addSubview(type)
    NSLayoutConstraint.activate([
      type.firstBaselineAnchor.constraint(equalTo: title.firstBaselineAnchor, constant: 15),
      type.bottomAnchor.constraint(equalTo: imageView.bottomAnchor, constant: -13),
      type.trailingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: -15),
      type.leadingAnchor.constraint(equalTo: imageView.leadingAnchor, constant: 10)
    ])
  }
  
  fileprivate func setupImageViewWithGradient() {
    //setup self
    
    
    //setup view
    let imageView = UIImageView()
    //imageView.backgroundColor = nil
    imageView.layer.borderWidth = 1
    imageView.layer.borderColor = UIColor.black.cgColor
    imageView.layer.cornerRadius = 10
    imageView.contentMode = .scaleAspectFill
    imageView.clipsToBounds = true
    
    
    
    
    imageView.translatesAutoresizingMaskIntoConstraints = false
    // addSubview(imageView)
    self.imageView = imageView
    
    
    
    /*
     
     NSLayoutConstraint.activate([
     imageView.topAnchor.constraint(equalTo: topAnchor, constant: 10),
     imageView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10),
     imageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8),
     imageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8)
     
     ])
     
     */
    
   // self.backgroundColor = UIColor.red
    //self.ad
    // self.backgroundView = UIView()
    let backgView =  UIView()
    // self.backgroundView = backgView
    // let backgroundView = UIView(frame: self.bounds)
    // backgroundView.backgroundColor = .red
    backgView.layer.masksToBounds = true
    backgView.layer.borderWidth = 1
    backgView.layer.borderColor = UIColor.clear.cgColor
    backgView.layer.cornerRadius = 10
    
    backgView.translatesAutoresizingMaskIntoConstraints = false
    //gradient
    let gradient = CAGradientLayer()
    gradient.frame = backgView.bounds
    //gradient.frame = imageView.bounds
    let startColor =   UIColor(red: 0, green: 0, blue: 0, alpha: 0)
    let endColor = UIColor.black.cgColor // UIColor(red: 0, green: 0, blue: 0, alpha: 1)
    
    gradient.colors = [startColor, endColor]
    //gradient.locations = [0.0, 1.0]
    //gradient.startPoint = CGPoint(x: 0, y: 0)
    //gradient.endPoint = CGPoint(x: 1, y: 1)
    // imageView.layer.addSublayer(gradient)
    backgView.layer.insertSublayer(gradient, at: 0)
    
    backgView.addSubview(imageView)
    // self.backgroundView = backgroundView
   addSubview(backgView)
    //imageView.addSubview(backgroundView)
    //imageView.bringSubviewToFront(view)
    
    
    
    NSLayoutConstraint.activate([
      backgView.topAnchor.constraint(equalTo: topAnchor, constant: 10),
      backgView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10),
      backgView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8),
      backgView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8)
      
    ])
    
    
    /*
     NSLayoutConstraint.activate([
     backgroundView.topAnchor.constraint(equalTo: imageView.topAnchor),
     backgroundView.bottomAnchor.constraint(equalTo: imageView.bottomAnchor),
     backgroundView.trailingAnchor.constraint(equalTo: imageView.trailingAnchor),
     backgroundView.leadingAnchor.constraint(equalTo: imageView.leadingAnchor)
     
     ])
     */
    NSLayoutConstraint.activate([
      imageView.topAnchor.constraint(equalTo: backgView.topAnchor),
      imageView.bottomAnchor.constraint(equalTo: backgView.bottomAnchor),
      imageView.trailingAnchor.constraint(equalTo: backgView.trailingAnchor),
      imageView.leadingAnchor.constraint(equalTo: backgView.leadingAnchor)
      
    ])
 
  }
  
  
}
