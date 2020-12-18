//
//  Goblin.swift
//  Projet3-Game
//
//  Created by Stéphane Rihet on 15/12/2020.
//

/*
 The Goblin class inherits from the character class.
 It is used to initialise the character's name and characteristics
 */

class Goblin: Character {
    init(playerName: String) {
        super.init(type: "Goblin", playerName: playerName, pv: goblinPv, pvInit: goblinFullPv, weapon: Axe())
    }
}
