//
//  ViewController.swift
//  MarioAnimations
//
//  Created by Crittenden, Rey  on 2/24/20.
//  Copyright © 2020 Crittenden, Rey . All rights reserved.
//

import UIKit
//import SpriteKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("Printed")
    }
    
    @IBAction func didPanKartView(_ sender: UIPanGestureRecognizer) {//Upon using a gesture on an image, do an action
        let location = sender.location(in: view)//"sender" is the gesture, "location" is where the gesture location, "view" is where the gestures are located
        print("Location x: \(location.x), y: \(location.y)")
        let kartView = sender.view!//Gets the view (ie the kart/image) that a gesture is applied to
        kartView.center = location//Sets the view's center to location, aka the location of the gesture (where a finger is placed on the screen)
    }
    
    @IBAction func didPinchKart(_ sender: UIPinchGestureRecognizer) {
        let scale = sender.scale//Scales based on pinch
        print("Scale: \(scale)")
        let kartView = sender.view!
        kartView.transform = CGAffineTransform(scaleX: scale, y: scale)//Changes the scale of the view/image based on sender.scale
    }
    
}

/*
 Panning - moving anywhere on the screen
 To allow images to be tappable, make sure they are eneabled in the storyboard
 Hold option on simulator to show 2 fingers. Hold shift while the fingers are together to move them. Let go of shift and drag away to mimic a pinch
 */
