//
//  DadJokeViewController.swift
//  ikid
//
//  Created by Kelley Lu Chen on 11/2/17.
//  Copyright © 2017 Kelley Lu Chen. All rights reserved.
//

import UIKit

class DadJokeViewController: UIViewController {
    var answer = false
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var nextBack: UIButton!
    @IBOutlet weak var questionBox: UILabel!
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var answerImg: UIImageView!
    
    @IBAction func ShowAnswer(_ sender: Any) {
        UIView.beginAnimations("Flip", context: nil)
        UIView.setAnimationDuration(0.5)
        UIView.setAnimationCurve(.easeInOut)
        if (!answer) {
            questionBox.text = nil
            answerImg.image = UIImage(named: "chicken")
            UIView.setAnimationTransition(.flipFromLeft, for: view, cache:true)
            nextBack.setTitle("back", for: .normal)
            answer = true
        } else {
            answer = false
            questionBox.text = "Which size does the chicken have the most feathers?"
            answerImg.image = nil
            nextBack.setTitle("back", for: .normal)
            UIView.setAnimationTransition(.flipFromRight, for: view, cache:true)

            
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
