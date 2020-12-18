//
//  Sword.swift
//  Projet3-Game
//
//  Created by Stéphane Rihet on 15/12/2020.
//

/*
 The Sword class inherits from the Weapon class.
 it is used to initialise the characteristics of the weapon
 */

class Sword: Weapon {
    init() {
        super.init(name: "Sword", damage: knightDammage)
    }
}
