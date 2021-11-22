//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // IBOutlet permite fazer ref. a um elemento de interface do usuário
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        /*
         Foi criada uma constanst. pois o seu valor não ira mudar, dentro do array temos
         as imagens das faces do dado.
         */
        let diceArray = [ #imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix") ]
        
        /* let imagem        aqui estamos acessando nosso array ao dig
        o nome dele, coloquei o randoElement para que acesse aleatoriamente o
         elemento image das faces do dado ou psso colocar o int.random que ele ira acessar
         as posiçoes das imagens dentro do array aleatoriamente
        */
        diceImageView1.image = diceArray.randomElement()
        diceImageView2.image = diceArray [Int.random(in: 0...5)]

    }
    
}

