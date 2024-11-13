//
//  pantallaBotones.swift
//  JuegoOrdenIOSFinal
//
//  Created by Alumnos on 12/11/24.
//

import UIKit

class pantallaBotones: UIViewController{
    var puntuacion = 0
    var indiceUsuario = [Int]()
    
    @IBOutlet weak var rainbowButton: UIButton!
    @IBOutlet weak var AppleJackButton: UIButton!
    @IBOutlet weak var TwilightButton: UIButton!
    @IBOutlet weak var FluttershyButton: UIButton!
    @IBOutlet weak var PinkieButton: UIButton!
    @IBOutlet weak var RarityButton: UIButton!
    
    @IBOutlet weak var puntuacionText: UILabel!
    
    @IBAction func Botones(_ sender: UIButton) {
        
        indiceUsuario.append(sender.tag)
        print("tag: " + String(sender.tag))
        
    }
    override func viewDidLoad(){
        for x in indicePartida{
            print("x: " + String(x))
            for y in indiceUsuario{
                print("y: " + String(y))
                if x == y{
                    puntuacion += 1
                    print("punt: " + String(puntuacion))
                }
            }
        }
        
        puntuacionText.text = "Puntuacion total " + String(puntuacion)
    }
    
}
