//
//  Weapon.swift
//  Projet3-Game
//
//  Created by Stéphane Rihet on 10/12/2020.
//

/*
 This class is used to instantiate a Weapon type object
 Each weapon has a
 - name
 - points of life that change during the game
 - the points of damage that the weapon can provoke
 */

class Weapon {
    var name: String
    var damage: Int
    
    init(name:String, damage:Int) {
        self.name = name
        self.damage = damage
    }
}
