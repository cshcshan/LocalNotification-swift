//
//  ViewController.swift
//  LocalNotification-swift
//
//  Created by Han Chen on 21/5/2016.
//  Copyright © 2016年 Han Chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }
  
  override func viewWillAppear(animated: Bool) {
    super.viewWillAppear(animated)
    self.setupLocalNotification()
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  func setupLocalNotification() {
    let notification: UILocalNotification = UILocalNotification()
    notification.alertBody = "Local Notification Testing!!"
    notification.fireDate = NSDate(timeIntervalSinceNow: 10)
    UIApplication.sharedApplication().scheduleLocalNotification(notification)
  }
}

