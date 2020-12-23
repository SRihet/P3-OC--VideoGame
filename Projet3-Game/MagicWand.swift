//
//  MagicWand.swift
//  Projet3-Game
//
//  Created by Stéphane Rihet on 17/12/2020.
//

/*
 The MagicWand class inherits from the Weapon class.
 it is used to initialise the characteristics of the weapon
 This weapon can be used by the mage and can restore health.
 */

class MagicWand: Weapon {
    init() {
        super.init(name: "MagicWand", damage: magusRecovery)
    }
}
