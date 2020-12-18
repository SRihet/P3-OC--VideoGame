//
//  Elf.swift
//  Projet3-Game
//
//  Created by Stéphane Rihet on 15/12/2020.
//

/*
 The Elf class inherits from the character class.
 It is used to initialise the character's name and characteristics
 */

class Elf: Character {
    init(playerName: String) {
        super.init(type: "Elf", playerName: playerName, pv: elfPv, pvInit: elfFullPv, weapon: Dagger())
    }
    
}
