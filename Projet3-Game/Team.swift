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
    
    //Calculate the total number of health points in a team and returns the total
    func teamLife() -> Int {
        let pv1 = character1?.pv ?? 0//Use the nil-coalescing operator (??) to supply a default value in case the Optional instance is nil.
        let pv2 = character2?.pv ?? 0//Use the nil-coalescing operator (??) to supply a default value in case the Optional instance is nil.
        let pv3 = character3?.pv ?? 0//Use the nil-coalescing operator (??) to supply a default value in case the Optional instance is nil.
        let teamLifetotal = pv1 + pv2 + pv3
        
        return teamLifetotal
    }
    
}
