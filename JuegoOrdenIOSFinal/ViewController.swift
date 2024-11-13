//
//  ViewController.swift
//  JuegoTareaIOS
//
//  Created by user234561 on 15/10/24.
//

import UIKit
var imagenesPartida = [UIImage]()
var imagenes = [UIImage(named:"RainbowDash"),UIImage(named:"Applejack"),UIImage(named:"Fluttershy"),UIImage(named:"PinkiePie"),UIImage(named:"Rarity"),UIImage(named:"TwilightSparkle")]
var indice = [0,1,3,4,5,2]
var indicePartida = [Int]()

class ViewController: UIViewController {
    
    @IBOutlet weak var imagenCambiante: UIImageView!
    @IBOutlet weak var botonEmpezarJuego: UIButton!
    
        
    override func viewDidLoad() {
        
        self.imagenCambiante.alpha = 1
        self.botonEmpezarJuego.isHidden = true
        var imagenesCopia = Array(imagenes)
        var indiceCopia = Array(indice)
        
        for _ in imagenes{
            let numRandom = Int.random(in: 0..<(imagenesCopia.count))
            imagenesPartida.append(imagenesCopia[numRandom]!)
            indicePartida.append(indiceCopia[numRandom])
            print("indice")
            print(indicePartida)
            print("--------\n")
            imagenesCopia.remove(at: numRandom)
            indiceCopia.remove(at: numRandom)
        }
        var indexImagenes = 0
        
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { (timer) in
            self.imagenCambiante.image = imagenesPartida[indexImagenes]
            indexImagenes = indexImagenes + 1
            //print(indexImagenes)
            if indexImagenes == imagenesPartida.count{
                timer.invalidate()
                self.botonEmpezarJuego.isHidden = false
            }
        }
    }
    
}
    
