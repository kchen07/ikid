//
//  FirstViewController.swift
//  ikid
//
//  Created by Kelley Lu Chen on 10/31/17.
//  Copyright © 2017 Kelley Lu Chen. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func pressedBack(_ sender: Any) {
        dismiss(animated: true)

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

