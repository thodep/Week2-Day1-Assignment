//
//  ViewController.swift
//  Week2-Day1-Assignment
//
//  Created by tho dang on 2015-08-17.
//  Copyright (c) 2015 Tho Dang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var companyLog: UIImageView!
    //var productImage = UIImage()
    
    @IBOutlet weak var productLabel: UILabel!
    
    var titleData:String?
    
    @IBOutlet weak var productDescription: UILabel!
    
   // var productData:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.productLabel.text = titleData
        self.productDescription.text = "This is some text showing that we can update this on the fly"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

