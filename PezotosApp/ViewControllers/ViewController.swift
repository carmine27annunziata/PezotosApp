//
//  ViewController.swift
//  PezotosApp
//
//  Created by Carmine on 04/12/2018.
//  Copyright © 2018 Pezotos. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIViewControllerTransitioningDelegate {
   
    @IBOutlet var gifMain: UIImageView!
    @IBOutlet var startButton: UIButton!
    
    let transition = CircularTransition()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var randomNum = 1
        gifMain.image = UIImage.gif(name: "Ex\(randomNum)")
        // Do any additional setup after loading the view, typically from a nib.
    }
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondVC = segue.destination as! ExcerciseViewController
        secondVC.transitioningDelegate = self
        secondVC.modalPresentationStyle = .custom
    }
    
    
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transition.transitionMode = .present
        transition.startingPoint = startButton.center
        transition.circleColor = startButton.backgroundColor!
        
        return transition
    }
    
    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transition.transitionMode = .dismiss
        transition.startingPoint = startButton.center
        transition.circleColor = startButton.backgroundColor!
        
        return transition
    }

}

