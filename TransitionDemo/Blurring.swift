//
//  Dimmable.swift
//  TransitionDemo
//
//  Created by Ray Fix on 1/7/16.
//

import UIKit

protocol Blurring {}

extension Blurring where Self: UIViewController {

  func blurWithDuration(duration: NSTimeInterval) {
    let blurView = UIVisualEffectView(frame: view.bounds)
    blurView.autoresizingMask = [.FlexibleWidth, .FlexibleHeight]
    view.addSubview(blurView)

    UIView.animateWithDuration(duration) {
      blurView.effect = UIBlurEffect(style: .Dark)
    }
  }
  
  func unblurWithDuration(duration: NSTimeInterval) {
    guard let blurView = view.subviews.last as? UIVisualEffectView else { return }
    
    UIView.animateWithDuration(duration, animations: {
         blurView.effect = nil
      }, completion: { success in
        blurView.removeFromSuperview()
    })
  }
}