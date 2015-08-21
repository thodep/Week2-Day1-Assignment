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
    //create an array of images
    var cupcakesImages: UIImage?
    
    @IBOutlet weak var productLabel: UILabel!
    
    var titleData:String?
    
    @IBOutlet weak var productDescription: UILabel!
    
    var cupcakeDescriptions:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.productLabel.text = titleData
        self.productDescription.text = cupcakeDescriptions
        self.companyLog.image = cupcakesImages

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

