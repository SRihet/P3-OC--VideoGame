//
//  Character.swift
//  Projet3-Game
//
//  Created by Stéphane Rihet on 10/12/2020.
//

/*
 This class is used to instantiate a Character type object
 Each character has a
 - type
 - name given by the player
 - points of life that change during the game
 - total life points
 - weapon
 */

class Character {
    var type: String
    var playerName: String
    var pv: Int
    var pvInit: Int
    var weapon: Weapon
    
    init(type:String, playerName:String, pv:Int, pvInit:Int, weapon:Weapon) {
        self.type = type
        self.playerName = playerName
        self.pv = pv
        self.pvInit = pvInit
        self.weapon = weapon
    }
    
}
