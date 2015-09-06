//
//  ViewController.swift
//  Animations
//
//  Created by Kennan Lyle Seno on 06/09/2015.
//  Copyright © 2015 kennanseno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var alienImage: UIImageView!
    var currentImage = 0
    
    @IBAction func updateImage(sender: AnyObject) {
        
        alienImage.image = UIImage(named: "frame" + String(currentImage) + ".png")
        print(currentImage)
        currentImage++
        
        if currentImage == 5 {
            currentImage = 0
        }
        
    }
    
    override func viewDidLayoutSubviews() {
        //animation from the side
        //alienImage.center = CGPointMake(alienImage.center.x - 400, alienImage.center.y)
        
        //fade out image
        //alienImage.alpha = 0
        
        //changing object size/location
        alienImage.frame = CGRectMake(100, 20, 0, 0)
    }
    
    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(5) { () -> Void in
             //animation from the side
            //self.alienImage.center = CGPointMake(self.alienImage.center.x + 400, self.alienImage.center.y)
            
            //fade in image
            //self.alienImage.alpha = 1
            
            //changing object size/location
            self.alienImage.frame = CGRectMake(100, 20, 100, 200)
        }
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

