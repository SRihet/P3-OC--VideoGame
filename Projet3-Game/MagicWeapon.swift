//
//  MagicWeapon.swift
//  Projet3-Game
//
//  Created by Stéphane Rihet on 21/12/2020.
//

/*
 The MagicWand class inherits from the Weapon class.
 it is used to initialise the characteristics of the weapon
 This weapon can be used by any character if the magic box appears.
 */

class MagicWeapon: Weapon {
    init() {
        super.init(name: "MagicWand", damage: magicDamage)
    }
}
