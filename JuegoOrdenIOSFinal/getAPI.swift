//
//  getAPI.swift
//  JuegoOrdenIOSFinal
//
//  Created by Alumnos on 14/11/24.
//

import UIKit

class getAPI: UIViewController{
    
    @IBOutlet weak var tablaPuntuaciones: UITableView!
    override func viewDidLoad() {
        let url = URL(string: "https://private-088c5a-usuarios4.apiary-mock.com/users")!
        URLSession.shared.dataTask(with: url) {
        (data, response, error) in
        if error == nil {
            do {
                let users = try JSONDecoder().decode([Usuario].self, from: data!)
            } catch let errorJson {
                print(errorJson)
            }
        } else {
            print(error ?? "a")
        }
        }.resume()
    }
}
