//
//  ExcerciseViewController.swift
//  PezotosApp
//
//  Created by Carmine on 10/12/2018.
//  Copyright © 2018 Pezotos. All rights reserved.
//

import UIKit

class ExcerciseViewController: UIViewController {
   
    @IBOutlet var excerciseTitle: UILabel!
    @IBOutlet var excerciseImage: UIImageView!
    @IBOutlet var excerciseDesc: UILabel!
    
    @IBAction func backToStart(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func startExerciseButton(_ sender: UIButton) {
        sender.isHidden = true
        countdownLabel.isHidden = false
        timer = Timer.scheduledTimer(timeInterval: 1, target: self,   selector: (#selector(ExcerciseViewController.updateTimer)), userInfo: nil, repeats: true)
    }
    
    @IBOutlet var countdownLabel: UILabel!
    var countdown = 10
    var timer = Timer()
    var excercise: Excercise?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if exercises.count != 0 {
            excercise = exercises.randomElement()!
            excerciseTitle.text = excercise?.title
            excerciseDesc.text = excercise?.description
            excerciseImage.image = excercise?.image
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
    }
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let doingExerciseVC = segue.destination as! DoingExerciseViewController
        doingExerciseVC.excercise = excercise
    }
    
    @objc func updateTimer() {
        countdown -= 1
        countdownLabel.text = "\(countdown)"
        if countdown == 0 {
            timer.invalidate()
        }
    }
}



