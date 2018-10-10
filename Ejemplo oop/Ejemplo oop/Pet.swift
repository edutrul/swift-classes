//
//  Tools.swift
//  Ejemplo oop
//
//  Created by Eduardo Telaya on 10/9/18.
//  Copyright © 2018 Eduardo Telaya. All rights reserved.
//


class Pet {
    var name:String
    var age:Int
    
    init(name:String, age:Int) {
        self.name = name
        self.age = age
    }
    
    func calculatePetAge()->String {
        return "El nombre de mi mascota es \(self.name) \(self.age)"
    }
    
}
