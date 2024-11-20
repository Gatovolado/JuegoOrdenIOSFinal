//
//  mainViewController.swift
//  JuegoOrdenIOSFinal
//
//  Created by Alumnos on 20/11/24.
//

import UIKit

class mainViewController : UIViewController{
    
    @IBOutlet weak var inicioButton: UIButton!
    @IBOutlet weak var nombreInput: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func botonMain(_ sender: UIButton) {
        player = Usuario(name: nombreInput.text!)
    }
}
