//
//  Excercises.swift
//  PezotosApp
//
//  Created by Carmine Annunziata on 10/12/2018.
//  Copyright © 2018 Pezotos. All rights reserved.
//

import UIKit


struct Excercise {
   let title : String
   let description : String
   let image : UIImage?
}

var exercises: [Excercise] = [
    Excercise(title: "Leg Extension", description: "Have a sit. Extend slowly one leg at time, keep it fixed for 5 seconds and then rest. After that repeat with the other leg. Do this for 1 minute", image: UIImage.gif(name: "Ex1")),
    Excercise(title: "Leg Curl", description: "Stand up. Rest your hands on the back of a chair. Slowly lift one foot at time flexing the knee and then rest. After that repeat with the other leg. Do this for 1 minute ", image: UIImage.gif(name: "Ex2")),
    Excercise(title: "Backbends", description: "Stand up. Bring the right leg back, resting the foot on the ground. Bend the leg until the knee touches the ground, and return to the starting position. Repeat the exercise 5 times per leg for 3 sessions  ", image: UIImage.gif(name: "Ex3")),
    Excercise(title: "Legraise", description: "In upright position, raise the leg and bend the knee as much you can. Then return to the starting position. After that repeat with the other leg. Repeat this for 10 times.", image: UIImage.gif(name: "Ex4")),
    Excercise(title: "Oscillations", description: "Stand up. Rise your arms and bend left without bending your back. Rest, and repeat bending left. Repeat 10 times. ", image: UIImage.gif(name: "Ex6")),
    Excercise(title: "Legs exercise", description: "Stay in a supine position. Keep your arms along your body, arms facing down and slightly bend your legs. Rise one leg by 45°, keeping the other knee always bent. Do the same with the other leg. Return to the starting position and repeat for 5 times. ", image: UIImage.gif(name: "Ex7")),
    Excercise(title: "Arms exercise", description: "Have a seat. Rise your arms together, without bending them, till you reach your head. Then return to the starting position and have a rest. Reapeat for 3 minutes.", image: UIImage.gif(name: "Ex8"))
]
