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
    Excercise(title: "AAAA", description: "Lorem ipsum dolor sit amet, consectetur adipisci elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua.", image: UIImage.gif(name: "Ex1")),
    Excercise(title: "BBBBB", description: "Lorem ipsum dolor sit amet, consectetur adipisci elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua.", image: UIImage.gif(name: "Ex1")),
    Excercise(title: "CCCCCCC", description: "Lorem ipsum dolor sit amet, consectetur adipisci elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua.", image: UIImage.gif(name: "Ex1"))
]
