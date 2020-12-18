//
//  Centaur.swift
//  Projet3-Game
//
//  Created by Stéphane Rihet on 15/12/2020.
//

/*
 The Centaur class inherits from the character class.
 It is used to initialise the character's name and characteristics
 */

class Centaur: Character {
    init(playerName: String) {
        super.init(type: "Centaur", playerName: playerName, pv: CentaurPv, pvInit: CentaurFullPv, weapon: Bow())
    }
}
