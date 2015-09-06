//
//  ViewController.swift
//  Is It Prime
//
//  Created by Kennan Lyle Seno on 05/09/2015.
//  Copyright © 2015 kennanseno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    
    @IBAction func isItPrime(sender: AnyObject) {
    
        if let number = Int(numberTextField.text!) {
            var isPrime = true
        
            if(number == 1){
                isPrime = false
            }
        
            if(number != 2 && number != 1){
                for(var i = 2; i < number; i++){
                    if(number % i == 0){
                        isPrime = false
                    }
                }
            }
        
            if(isPrime){
                resultLabel.text = "\(number) is prime!"
            }else{
                resultLabel.text = "\(number) is not prime!"
            }
            resultLabel.textColor = UIColor.blackColor()
        }else{
            resultLabel.text = "Please enter a number"
            resultLabel.textColor = UIColor.redColor()
        }
    }
    
    //disable keyboard when tapping anywhere
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        view.endEditing(true)
        super.touchesBegan(touches, withEvent: event)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        numberTextField.resignFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

