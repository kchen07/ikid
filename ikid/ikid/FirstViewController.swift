//
//  FirstViewController.swift
//  ikid
//
//  Created by Kelley Lu Chen on 10/31/17.
//  Copyright © 2017 Kelley Lu Chen. All rights reserved.
//
import UIKit

class FirstViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBOutlet weak var answerImg: UIImageView!
    @IBOutlet weak var questionBox: UILabel!
    @IBOutlet weak var nextBack: UIButton!
    
    @IBAction func BackPressed(_ sender: Any) {
        dismiss(animated: true)
    }
    
    @IBAction func showAnswer(_ sender: Any) {
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
