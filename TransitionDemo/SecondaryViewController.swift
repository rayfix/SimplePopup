//
//  SecondaryViewController.swift
//  TransitionDemo
//
//  Created by Ray Fix on 1/8/16.
//  Copyright © 2016 Neko Solutions. All rights reserved.
//

import UIKit

class SecondaryViewController : UIViewController {
  
  @IBOutlet weak var popupView: UIView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    popupView.layer.cornerRadius = 10
    popupView.layer.borderColor = UIColor.blackColor().CGColor
    popupView.layer.borderWidth = 0.25
    popupView.layer.shadowColor = UIColor.blackColor().CGColor
    popupView.layer.shadowOpacity = 0.6
    popupView.layer.shadowRadius = 15
    popupView.layer.shadowOffset = CGSize(width: 5, height: 5)
    popupView.layer.masksToBounds = false
  }
  
}
