//
//  Axe.swift
//  Projet3-Game
//
//  Created by Stéphane Rihet on 15/12/2020.
//

/*
 The Axe class inherits from the Weapon class.
 it is used to initialise the characteristics of the weapon
 */

class Axe: Weapon {
    init() {
        super.init(name: "Axe", damage: goblinDammage)
    }
}
