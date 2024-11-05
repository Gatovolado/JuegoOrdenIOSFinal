//
//  ViewController.swift
//  JuegoTareaIOS
//
//  Created by user234561 on 15/10/24.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var imagenCambiante: UIImageView!-
    var imagenes = [UIImage(named:"RainbowDash"),UIImage(named:"Applejack"),UIImage(named:"Fluttershy"),UIImage(named:"PinkiePie"),UIImage(named:"Rarity"),UIImage(named:"TwilightSparkle")]
        
    override func viewDidLoad() {
        
        var imagenesCopia = Array(imagenes)
        var imagenesPartida = [UIImage]()
        for _ in imagenes{
            let numRandom = Int.random(in: 0..<(imagenesCopia.count))
            imagenesPartida.append(imagenesCopia[numRandom]!)
            imagenesCopia.remove(at: numRandom)
        }
        var indexImagenes = 0
        
        Timer.scheduledTimer(withTimeInterval: 2, repeats: true) { (timer) in
            self.imagenCambiante.image = imagenesPartida[indexImagenes]
            indexImagenes = indexImagenes + 1
            print(indexImagenes)
            if indexImagenes == imagenesPartida.count{
                timer.invalidate()
            }
        }
    }
    
    
}
    
