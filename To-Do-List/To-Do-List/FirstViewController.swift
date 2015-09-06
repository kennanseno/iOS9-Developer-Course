//
//  FirstViewController.swift
//  To-Do-List
//
//  Created by Kennan Lyle Seno on 05/09/2015.
//  Copyright © 2015 kennanseno. All rights reserved.
//

import UIKit

var toDoList = [String]()

class FirstViewController: UIViewController, UITableViewDelegate    {

    @IBOutlet weak var todoListTable: UITableView!
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDoList.count
    }
    
  
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Celll")
        
        cell.textLabel?.text = toDoList[indexPath.row]
        
        return cell
    }
    
    override func viewDidAppear(animated: Bool) {
        todoListTable.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        if NSUserDefaults.standardUserDefaults().objectForKey("toDoList") != nil {
            toDoList = NSUserDefaults.standardUserDefaults().objectForKey("toDoList") as! [String]
        }
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath){
        if editingStyle == UITableViewCellEditingStyle.Delete {
            toDoList.removeAtIndex(indexPath.row)
            NSUserDefaults.standardUserDefaults().setObject(toDoList, forKey: "toDoList")
            todoListTable.reloadData()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

