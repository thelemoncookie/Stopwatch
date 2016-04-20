//
//  ViewController.swift
//  navigation
//
//  Created by Darlene Phan on 4/19/16.
//  Copyright © 2016 Darlene Phan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
      var timer = NSTimer()
  
  
  var time = 0
  

  
  
  @IBOutlet weak var timerLabel: UILabel!
  
  func increaseTimer() {
     time = time + 1
     timerLabel.text = String(time)
    
  }
  
  @IBAction func resetButton(sender: AnyObject) {
     timer.invalidate()
     time = 0
    timerLabel.text = "0"
  }
  

  @IBAction func playButton(sender: AnyObject) {
    timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: #selector(ViewController.increaseTimer), userInfo: nil, repeats: true)
    
  }
  
  
  @IBAction func pauseButton(sender: AnyObject) {
     timer.invalidate()
  }
  
  

  
  
  

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    

  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

 