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
    Excercise(title: "Muovi il piede spastico", description: "Lorem ipsum dolor sit amet, consectetur adipisci elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua.", image: UIImage.gif(name: "Ex1")),
    Excercise(title: "Muovi il piede spastico 2", description: "Lorem ipsum dolor sit amet, consectetur adipisci elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua.", image: UIImage.gif(name: "Ex2")),
    Excercise(title: "CCCCCCC", description: "Lorem ipsum dolor sit amet, consectetur adipisci elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua.", image: UIImage.gif(name: "Ex3")),
    Excercise(title: "CCCCCCC", description: "Lorem ipsum dolor sit amet, consectetur adipisci elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua.", image: UIImage.gif(name: "Ex4")),
    Excercise(title: "CCCCCCC", description: "Lorem ipsum dolor sit amet, consectetur adipisci elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua.", image: UIImage.gif(name: "Ex5"))
]
