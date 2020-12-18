//
//  Team.swift
//  Projet3-Game
//
//  Created by Stéphane Rihet on 10/12/2020.
//


/*
 This class is used to instantiate a team type object
 Each team has a name and 3 characters
 */

class Team {
    var nameTeam: String
    var character1: Character?
    var character2: Character?
    var character3: Character?
    
    init(nameTeam: String) {
        self.nameTeam = nameTeam
    }
    
}
