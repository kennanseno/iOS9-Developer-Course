//
//  ViewController.swift
//  Stopwatch
//
//  Created by Kennan Lyle Seno on 05/09/2015.
//  Copyright © 2015 kennanseno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var timerLabel: UILabel!
    
    var timer  = NSTimer()
    var time = 0
    
    func increaseTimer(){
        time++
        timerLabel.text = String(time)
    }
    
    @IBAction func play(sender: AnyObject) {
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("increaseTimer"), userInfo: nil, repeats: true)
        
    }
    
    @IBAction func pause(sender: AnyObject) {
        timer.invalidate()
    }
    
    @IBAction func stop(sender: AnyObject) {
        timer.invalidate()
        time = 0
        timerLabel.text = String(time)
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

