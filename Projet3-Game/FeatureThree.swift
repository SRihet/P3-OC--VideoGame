//
//  FeatureThree.swift
//  Projet3-Game
//
//  Created by Stéphane Rihet on 21/12/2020.
//

/*
 3. Une fois la partie terminée (lorsque tous les personnages d’une équipe sont morts), tu affiches le joueur qui a gagné et les statistiques de jeu : le nombre de tours et la liste des personnages des deux équipes avec leurs propriétés (point de vie, etc.).
 */

import Foundation

//Winner display function and game statistics
func winner() {
    var winTeam: Team
    var looseTeam: Team
    
    sleep(2)
    print("------------------------------------------------------------------\n🔥-👏🏻 The game ended in \(roundCount) rounds 👏🏻-🔥\n-------------------------------------------------------------------")
    sleep(2)
    
    //Verification of the winning team
    if team1.teamLife() <= 0 {
        winTeam = team2
        looseTeam = team1
    }
    else{
        winTeam = team1
        looseTeam = team2
    }
    print("🏆\(winTeam.nameTeam)🏆 Wins, Congratulations! \n-------------------------------------------------------------------\n📈Winning team statistics📉:\n🏅\(winTeam.character1!.playerName)🏅 the \( winTeam.character1!.type) with \(winTeam.character1!.pv) points remaining out of \(winTeam.character1!.pvInit)\n🏅\(winTeam.character2!.playerName)🏅 the \( winTeam.character2!.type) with \(winTeam.character1!.pv) points remaining out of \(winTeam.character2!.pvInit)\n🏅\(winTeam.character3!.playerName)🏅 the \( winTeam.character3!.type) with \(winTeam.character3!.pv) points remaining out of \(winTeam.character3!.pvInit)\n-------------------------------------------------------------------")
    
    sleep(2)
    
    print("☠️\(looseTeam.nameTeam)☠️ has lost\n-------------------------------------------------------------------\n📈Losing team statistics📉:\n🏴‍☠️\(looseTeam.character1!.playerName) the \( looseTeam.character1!.type) is dead🏴‍☠️\n🏴‍☠️\(looseTeam.character2!.playerName) the \( looseTeam.character2!.type) is dead🏴‍☠️\n🏴‍☠️\(looseTeam.character3!.playerName) the \( looseTeam.character3!.type) is dead🏴‍☠️\n-------------------------------------------------------------------")
}
