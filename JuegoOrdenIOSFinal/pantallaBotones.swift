//
//  pantallaBotones.swift
//  JuegoOrdenIOSFinal
//
//  Created by Alumnos on 12/11/24.
//

import UIKit

class pantallaBotones: UIViewController{
    
    var indiceUsuario = [Int]()
    
    @IBOutlet weak var rainbowButton: UIButton!
    @IBOutlet weak var AppleJackButton: UIButton!
    @IBOutlet weak var TwilightButton: UIButton!
    @IBOutlet weak var FluttershyButton: UIButton!
    @IBOutlet weak var PinkieButton: UIButton!
    @IBOutlet weak var RarityButton: UIButton!
    
    @IBOutlet weak var ultimoButton: UIButton!
    @IBOutlet weak var puntuacionText: UILabel!
    
    @IBAction func Botones(_ sender: UIButton) {
        
        indiceUsuario.append(sender.tag)
        //print("tag: " + String(sender.tag))
        sender.isHidden = true
        comprobarPunt()
        
    }
    
    
    override func viewDidLoad(){
        
    }
    
    @IBAction func puntuacionesButton(_ sender: Any) {
        do{
            postear()
        }catch let error{
            print(error.localizedDescription)
            patch()
        }
    }
    func comprobarPunt(){
        
        var puntuacion = 0
        for i in 0...(indiceUsuario.count - 1){
            print(i)
            if indicePartida[i] == indiceUsuario[i]{
                
                puntuacion = puntuacion + 1
                print("punt: " + String(puntuacion))
            }
        }
        puntuacionText.text = "Puntuacion total " + String(puntuacion)
        player!.score = puntuacion
    }
    
}
