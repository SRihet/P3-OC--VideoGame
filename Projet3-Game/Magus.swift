//
//  Magus.swift
//  Projet3-Game
//
//  Created by Stéphane Rihet on 21/12/2020.
//

/*
 The Elf class inherits from the character class.
 It is used to initialise the character's name and characteristics
 */

class Magus: Character {
    init(playerName: String) {
        super.init(type: "Magus", playerName: playerName, pv: magusPv, pvInit: magusFullPv, weapon: MagicWand())
    }
    
}
