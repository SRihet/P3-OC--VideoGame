//
//  Knight.swift
//  Projet3-Game
//
//  Created by Stéphane Rihet on 15/12/2020.
//

/*
 The knight class inherits from the character class.
 It is used to initialise the character's name and characteristics
 */

class Knight: Character {
    init(playerName: String) {
        super.init(type: "Knight", playerName: playerName, pv: knightPv, pvInit: knightFullPv, weapon: Sword())
    }
}
