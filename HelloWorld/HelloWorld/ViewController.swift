//
//  ViewController.swift
//  HelloWorld
//
//  Created by Mav3r1ck on 7/19/14.
//  Copyright (c) 2014 Mav3r1ck. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet var Button : UIButton
    
    @IBOutlet var textLabel : UILabel = nil
    
    @IBAction func buttonPressed(sender:UIButton) {
        
        self.textLabel.text = "Hello World"
        self.textLabel.textColor = UIColor .redColor()
        createAnimatorStuff()
        
    }
    

    //Gravity
    
    var animator: UIDynamicAnimator? = nil
    let gravity = UIGravityBehavior()
    let collider = UICollisionBehavior()
    
    func createAnimatorStuff() {
        animator = UIDynamicAnimator(referenceView:self.view);
        animator?.addBehavior(collider)
        
        gravity.addItem(textLabel)
        gravity.gravityDirection = CGVectorMake(0, 0.9)
        gravity.magnitude = 0.3
        animator?.addBehavior(gravity);
        
        collider.addItem(textLabel)
        collider.translatesReferenceBoundsIntoBoundary = true
        animator?.addBehavior(collider)
        
    }
    
    
}

