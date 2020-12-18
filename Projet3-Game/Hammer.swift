//
//  Hammer.swift
//  Projet3-Game
//
//  Created by Stéphane Rihet on 15/12/2020.
//

/*
 The Hammer class inherits from the Weapon class.
 it is used to initialise the characteristics of the weapon
 */

class Hammer: Weapon {
    init() {
        super.init(name: "Hammer", damage: ogreDammage)
    }
}
