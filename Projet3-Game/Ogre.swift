//
//  Ogre.swift
//  Projet3-Game
//
//  Created by Stéphane Rihet on 15/12/2020.
//

/*
 The Ogre class inherits from the character class.
 It is used to initialise the character's name and characteristics
 */

class Ogre: Character {
    init(playerName: String) {
        super.init(type: "Ogre", playerName: playerName, pv: ogrePv, pvInit: ogreFullPv, weapon: Hammer())
    }
}

