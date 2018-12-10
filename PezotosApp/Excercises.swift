//
//  Excercises.swift
//  PezotosApp
//
//  Created by Carmine on 10/12/2018.
//  Copyright © 2018 Pezotos. All rights reserved.
//

import UIKit


struct Excercise {
   let title : String
   let description : String
   let image : UIImage?
}

var exercises: [Excercise] = [
    Excercise(title: "AAAA", description: "DESC AAAA", image: UIImage.gif(name: "Ex1")),
    Excercise(title: "BBBBB", description: "DESC BBBB", image: UIImage.gif(name: "Ex1")),
    Excercise(title: "CCCCCCC", description: "DESC CCCC", image: UIImage.gif(name: "Ex1"))
]
