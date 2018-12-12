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
    countdownLabel.text = "Stepwatch:      \(countdownMinutes):\(countdownSeconds)"

        }
}
