//
//  SecondViewController.swift
//  To-Do-List
//
//  Created by Kennan Lyle Seno on 05/09/2015.
//  Copyright © 2015 kennanseno. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var item: UITextField!
    
    
    @IBAction func addItem(sender: AnyObject) {
        toDoList.append(item.text!)
        item.text = ""
        
        NSUserDefaults.standardUserDefaults().setObject(toDoList, forKey: "toDoList")
    }
    
    
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.item.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    

}

