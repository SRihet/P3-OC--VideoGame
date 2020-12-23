//
//  main.swift
//  Projet3-Game
//
//  Created by Stéphane Rihet on 10/12/2020.
//

import Foundation
/*
 Entry point for the program
 */

initGame() // Launching the game
sleep(1) //Pause the game to make the interface more visual
nameTeam() // Function that allows the 2 players to choose the name of their team
sleep(1)
currentTeam = team1 // Knowing which team needs to interact with the console
sleep(1)
chooseCharacter() // Choose the type of the 3 characters in the currentTeam and give them a name.
sleep(1)
currentTeam = team2 // Knowing which team needs to interact with the console
sleep(1)
chooseCharacter() // Choose the type of the 3 characters in the currentTeam and give them a name.
sleep(2)
// Fight turn by turn until one team is dead.
while team1.teamLife() > 0 && team2.teamLife() > 0 {
    fight() //All the steps of a round
}
sleep(1)
winner() // Display of the winner and game statistics
