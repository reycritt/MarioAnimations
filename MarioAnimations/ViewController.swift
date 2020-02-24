//
//  ViewController.swift
//  MarioAnimations
//
//  Created by Crittenden, Rey  on 2/24/20.
//  Copyright © 2020 Crittenden, Rey . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func didPanKartView(_ sender: UIPanGestureRecognizer) {//On action of the gesture, rather than the image, will do something (in this instance, will drag around the screen); since all 3 images/gestures will move the same, they will all be connected to the same function
        let location = sender.location(in: view)
        print("Location x: \(location.x), y: \(location.y)")
    }
    

}

