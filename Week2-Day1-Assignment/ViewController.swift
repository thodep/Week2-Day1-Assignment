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
    
    @IBOutlet weak var productLabel: UILabel!
    
    @IBOutlet weak var productDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.productLabel.text = "New Title"
        self.productDescription.text = "This is some text showing that we can update this on the fly"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

