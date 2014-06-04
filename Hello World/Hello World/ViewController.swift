//
//  ViewController.swift
//  Hello World
//
//  Created by Mav3r1ck on 6/3/14.
//  Copyright (c) 2014 Mav3r1ck. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBOutlet var myButton : UIButton
    
    
    @IBAction func buttonPressed(sender : UIButton) {
        var myAlertView = UIAlertView()
        myAlertView.title = "Welcome"
        myAlertView.message = "To Swift"
        myAlertView.addButtonWithTitle("Dismiss")
        myAlertView.show()
        
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        println("ViewDidLoad")
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

