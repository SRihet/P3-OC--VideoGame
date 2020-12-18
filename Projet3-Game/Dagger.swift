//
//  Dagger.swift
//  Projet3-Game
//
//  Created by Stéphane Rihet on 15/12/2020.
//

/*
 The Dagger class inherits from the Weapon class.
 it is used to initialise the characteristics of the weapon
 */

class Dagger: Weapon {
    init() {
        super.init(name: "Dagger", damage: elfDammage)
    }
}
