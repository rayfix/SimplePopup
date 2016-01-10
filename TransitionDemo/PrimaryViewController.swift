//
//  ViewController.swift
//  TransitionDemo
//
//  Created by Ray Fix on 1/7/16.
//  Copyright © 2016 Neko Solutions. All rights reserved.
//

import UIKit

class PrimaryViewController: UIViewController, Blurring {

  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    blurWithDuration(0.5)
  }
  
  @IBAction func closePopup(segue: UIStoryboardSegue) {
    unblurWithDuration(0.5)
  }
  
}

