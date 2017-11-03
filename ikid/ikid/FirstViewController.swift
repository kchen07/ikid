//
//  FirstViewController.swift
//  ikid
//
//  Created by Kelley Lu Chen on 10/31/17.
//  Copyright © 2017 Kelley Lu Chen. All rights reserved.
//
import UIKit

class FirstViewController: UIViewController {
    var answer = false
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
        UIView.beginAnimations("flip", context: nil)
        UIView.setAnimationDuration(0.5)
        UIView.setAnimationCurve(.easeInOut)
        if (!answer) {
            questionBox.text = nil
            answerImg.image = UIImage(named: "Image")
            UIView.setAnimationTransition(.flipFromLeft, for: view, cache: true)
            nextBack.setTitle(("back"), for: .normal)
            answer = true
        } else {
            answerImg.image = nil
            questionBox.text = "What do you call a fish without an eye?"
            answer = false
            nextBack.setTitle("next", for: .normal)
            UIView.setAnimationTransition(.flipFromRight, for: view, cache: true)

        }
        UIView.commitAnimations()
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
