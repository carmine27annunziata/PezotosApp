//
//  CompletedExerciseViewController.swift
//  PezotosApp
//
//  Created by Carmine on 13/12/2018.
//  Copyright © 2018 Pezotos. All rights reserved.
//

import UIKit

class CompletedExerciseViewController: UIViewController {

    @IBOutlet var finishGif: UIImageView!
    @IBAction func nextExercise(_ sender: Any) {
        performSegue(withIdentifier: "nextExerciseSegue", sender: nil)
    }
    
    @IBAction func completedWorkoutButton(_ sender: Any) {
        performSegue(withIdentifier: "completedExerciseSegue", sender: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        finishGif.image = UIImage.gif(name: "finish")

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
