//
//  DoingExerciseViewController.swift
//  PezotosApp
//
//  Created by Carmine Annunziata on 11/12/2018.
//  Copyright © 2018 Pezotos. All rights reserved.
//

import UIKit

class DoingExerciseViewController: UIViewController {

    var excercise: Excercise?
    @IBOutlet var excerciseImage: UIImageView!
    @IBOutlet var excerciseTitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       excerciseImage.image = excercise?.image
        excerciseTitle.text = excercise?.title
    }
    @IBOutlet var countdownLabel: UILabel!
    var countdownSeconds = 0
    var countdownMinutes = 0

    override func viewDidAppear(_ animated: Bool) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self,   selector: (#selector(DoingExerciseViewController.updateTimer)), userInfo: nil, repeats: true)
    }
    var timer = Timer()

@objc func updateTimer() {
    countdownSeconds += 1
    if countdownSeconds == 60 {
        countdownSeconds = 0
        countdownMinutes += 1
    }
    countdownLabel.text = "Stopwatch:      \(countdownMinutes):\(countdownSeconds)"
        }

    var isPaused = false
    @IBAction func pauseButton(_ sender: UIButton) {
        if isPaused {
            timer = Timer.scheduledTimer(timeInterval: 1, target: self,   selector: (#selector(DoingExerciseViewController.updateTimer)), userInfo: nil, repeats: true)
            isPaused = false
            sender.setImage(UIImage(named: "PauseButton"), for: .normal)
        }
        else {timer.invalidate()
            isPaused = true
            sender.setImage(UIImage(named: "PlayButton"), for: .normal)
            
        }
    }
    



}
