//
//  WelcomeViewController.swift
//  PezotosApp
//
//  Created by Andrés Navarro on 12/12/2018.
//  Copyright © 2018 Pezotos. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var scrollview: UIScrollView!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var weightTextField: UITextField!
    @IBOutlet weak var birthDatePicker: UIDatePicker!
    
    let defaults = UserDefaults.standard
    
    @IBAction func continueAction(_ sender: Any) {
        defaults.set(nameTextField.text, forKey: "name")
        defaults.set(weightTextField.text, forKey: "weight")
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/YYYY"
        let dateString = dateFormatter.string(from: birthDatePicker.date)
        
        defaults.set(dateString, forKey: "birthday")
        self.performSegue(withIdentifier: "goToMain", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
