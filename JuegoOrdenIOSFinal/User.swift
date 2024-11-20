//
//  User.swift
//  JuegoOrdenIOSFinal
//
//  Created by Alumnos on 19/11/24.
//

import Foundation
var player:Usuario? = nil
class Usuario : Codable {
    var name: String
    var score: Int = 0
    init(name: String) {
        self.name = name
    }
}
