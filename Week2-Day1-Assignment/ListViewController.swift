//
//  ListViewController.swift
//  Week2-Day1-Assignment
//
//  Created by tho dang on 2015-08-18.
//  Copyright (c) 2015 Tho Dang. All rights reserved.
//

import UIKit

class ListViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet var tableView: UITableView!
    var cupcakeNames = ["Strawberry Chocolate","Red Velvet","Strawberry Pink","Chocolate Ocean","Vanilla Blue"]
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cupcakeNames.count
    }
    
  
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell:UITableViewCell = (self.tableView.dequeueReusableCellWithIdentifier( "cell") )! as! UITableViewCell
        
        cell.textLabel?.text = self.cupcakeNames[indexPath.row]
    
        return cell
        
    }
    
 func  tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        let alertController = UIAlertController(title: "Row Selected", message: "You've selected a row", preferredStyle: .Alert)
        
        let okayAction = UIAlertAction(title: "OKAY", style: .Cancel) {
            (action) in
            println(action)
        }
        
     //   presentViewController(alertController, animated: true, completion:nil)
    
        performSegueWithIdentifier("presentation", sender: self)
    
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.registerClass(UITableViewCell.self , forCellReuseIdentifier: "cell")
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "presentation"
        {
            if let destinationVC:ViewController = segue.destinationViewController as? ViewController {
               // if let indexPath = tableView.indexPathForCell(sender as! UITableViewCell)
                
                
                    if let cell = sender as? UITableViewCell,
                        let indexPath = tableView.indexPathForCell( cell ) {
                            print("Let's do something cool")
                            destinationVC.titleData = cupcakeNames[indexPath.row]
                }
                
           
                //print("Let's do something cool")
                
            }
        }
    }
}
