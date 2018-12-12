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
    @IBAction func backToMainFromExercise(_ sender: Any) {
        performSegue(withIdentifier: "backToMainFromExercise", sender: nil)
    }


    override func viewDidLoad() {
        super.viewDidLoad()
       excerciseImage.image = excercise?.image
    }

//
//    /*
//    // MARK: - Navigation
//
//    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // Get the new view controller using segue.destination.
//        // Pass the selected object to the new view controller.
//    }
//    */
//
}
