//
//  SecondViewController.swift
//  ikid
//
//  Created by Kelley Lu Chen on 10/31/17.
//  Copyright © 2017 Kelley Lu Chen. All rights reserved.
//

import UIKit

class GoodViewController: UIViewController {
    var answer = false;
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBOutlet weak var questionBox: UILabel!
    @IBOutlet weak var answerImg: UIImageView!
    @IBOutlet weak var nextBack: UIButton!

    @IBAction func ShowAnswer(_ sender: Any) {
        UIView.beginAnimations(("Flip"), context: nil)
        UIView.setAnimationDuration(0.5)
        UIView.setAnimationCurve(.easeInOut)
        if (!answer) {
            questionBox.text = nil
            answerImg.image = UIImage(named: "bar")
            UIView.setAnimationTransition(.flipFromLeft, for: view, cache: true)
            nextBack.setTitle("back", for: .normal)
            answer = true
        } else {
            answerImg.image = nil
            questionBox.text = "A guy walks into a bar and sustains a mild concussion"
            answer = false
            nextBack.setTitle("next", for: .normal)
            UIView.setAnimationTransition(.flipFromRight, for: view, cache: true)

        }
        UIView.commitAnimations()
    }
    @IBOutlet weak var text: UILabel!
    
    
    @IBAction func BackPressed(_ sender: Any) {
        dismiss(animated: true)
    }
}


