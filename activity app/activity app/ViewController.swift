//
//  ViewController.swift
//  activity app
//
//  Created by Mariam Alkandari on 9/23/20.
//  Copyright © 2020 Mariam Alkandari. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var field: UITextField!
    @IBOutlet weak var activityLabel: UILabel!
    
    var activities : [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func addActivity(_ sender: Any) {
        if !field.text!.isEmpty {
        activities.append(field.text!)
        print(activities)
        }
    }
    
    @IBAction func randomActivity(_ sender: Any) {
        activityLabel.text = activities.randomElement()
    }
}

