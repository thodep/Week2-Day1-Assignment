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
    // create an indexpath
    var indexPath:NSIndexPath = NSIndexPath()
    
    var cupcakeNames = ["Strawberry Chocolate",
        "Red Velvet",
        "Strawberry Pink",
        "Chocolate Ocean",
        "Vanilla Blue"]
    //var yummyCupcakeImages = UIImage(named: "4")
    
    var myImageCollection = ["1","2","3","4","5"]
    
    
    var cupcakeQuotes = ["That's it, cupcake. You're going down.",
        "What can I say? I've never met a cupcake I didn't want to get to know better.",
        "A cake for all is not a celebration of one. Cupcakes are the ultimate birthday cake.",
        "Hell-on-skis, can you hear me? This is flying cupcake.",
        "Life's meant to be sweet! Grab a cupcake and enjoy the ride!"]
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cupcakeNames.count
    }
    
  
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell:UITableViewCell = (self.tableView.dequeueReusableCellWithIdentifier( "cell") )! as! UITableViewCell
        
        cell.textLabel?.text = self.cupcakeNames[indexPath.row]
    
        return cell
        
    }
    
 func  tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    
    let alertController = UIAlertController(title: "Selected a Cupcake Flavor", message: "Remember to read the Quote", preferredStyle: .Alert)
    
    self.indexPath = indexPath
    var okayAction:UIAlertAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default)
            { (action) -> Void in
                
    self.performSegueWithIdentifier("presentation", sender: self)
    }
  
    alertController.addAction(okayAction)
    self.presentViewController(alertController, animated: true) { () -> Void in }
   
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
                print(myImageCollection[indexPath.row])
                destinationVC.titleData =  cupcakeNames[self.indexPath.row]
                destinationVC.cupcakeDescriptions = cupcakeQuotes[self.indexPath.row]
                
                let bimakerLogo = UIImage(named:myImageCollection[indexPath.row] )
                destinationVC.cupcakesImages =  bimakerLogo
            }
            
        }
    }
}
