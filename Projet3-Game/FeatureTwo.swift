//
//  FeatureTwo.swift
//  Projet3-Game
//
//  Created by Stéphane Rihet on 21/12/2020.
/*
 2. Réaliser le combat au tour par tour. L’idée, c’est donc que le joueur 1 puisse choisir un personnage de son équipe, choisir le personnage qui va subir l’action (dans l’équipe adverse en cas d’attaque ou dans son équipe en cas de soin), de réaliser l’action, puis de vérifier si la partie est terminée, sinon c’est au tour du joueur 2 ;
 */

import Foundation

// Creation of the two teams useful for the game
var team1 = Team(nameTeam: "team1")
var team2 = Team(nameTeam: "team2")
var roundCount = 0 //Round counter in the game
var magicBoxWeapon: Weapon? // Instanciation of the bonus weapon

//All the steps of a round
func fight()  {
    //creation of variables
    var choiceHeroe:Character
    var choiceEnemy:Character
    print("-----------------------------------------------------------------------------------------------------------------\n🔥 \(team1.nameTeam) ! it's your turn to play 🔥")
    choiceHeroe = selectCharacter(team: team1, status: 1) //Choose a character in your team
    if choiceHeroe.type == "Magus" { //In case of care
        choiceEnemy = selectCharacter(team: team1, status: 2)
        action(heroe:choiceHeroe, enemy:choiceEnemy, status: 1) //Manipulation of hit points
    }else { //in case of attack
        choiceEnemy = selectCharacter(team: team2, status: 3) //Choose a character from the opponent's team
        action(heroe:choiceHeroe, enemy:choiceEnemy, status: 2) //Manipulation of hit points
    }
    //Checking the opposing team's point total
    if team2.teamLife() > 0 {
        print("-----------------------------------------------------------------------------------------------------------------\n🔥 \(team2.nameTeam) ! it's your turn to play 🔥")
        choiceHeroe = selectCharacter(team: team2, status: 1)
        if choiceHeroe.type == "Magus" {//In case of care
            choiceEnemy = selectCharacter(team: team2, status: 2)
            action(heroe:choiceHeroe, enemy:choiceEnemy, status: 1) //Manipulation of hit points
        }else { //in case of attack
            choiceEnemy = selectCharacter(team: team1, status: 3) //Choose a character from the opponent's team
            action(heroe:choiceHeroe, enemy:choiceEnemy, status: 2) //Manipulation of hit points
        }
    }
}

/*
 Choisissez un personnage de votre équipe ou de l'équipe adverse
 returns the chosen character
 */
func selectCharacter(team: Team, status:Int) ->Character{
    //creation of variables
    var myCharacter:Character?
    var charactIsAlive = false
    
    while charactIsAlive == false {//As long as the chosen character is dead
        var choiceIsOK = false // Boolean to validate console return
        printTeam(status: status, team: team) //Display of team composition
        while choiceIsOK == false {
            if let heroe = readLine() { // Returns a string read from standard input
                switch heroe {
                case "1":
                    myCharacter = team.character1! //Initialize the variable with the chosen character
                    charactIsAlive = checkCharactIsDead(character: myCharacter!) //Check of the state of life of the chosen character
                    choiceIsOK = true //Changing the Boolean value if the name is not used
                case "2":
                    myCharacter = team.character2! //Initialize the variable with the chosen character
                    charactIsAlive = checkCharactIsDead(character: myCharacter!) //Check of the state of life of the chosen character
                    choiceIsOK = true //Changing the Boolean value if the name is not used
                case "3":
                    myCharacter = team.character3!//Initialize the variable with the chosen character
                    charactIsAlive = checkCharactIsDead(character: myCharacter!) //Check of the state of life of the chosen character
                    choiceIsOK = true //Changing the Boolean value if the name is not used
                default:
                    print("‼️ I didn't understand, please type a number between 1 and 3 to select your heroe ‼️")
                    choiceIsOK = false //Changing the Boolean value if the name is used
                }
            }
        }
    }
    sleep(1)
    return myCharacter! //returns the chosen character
}
/*
 Display of team composition
 Depending on the type of action
 */
func printTeam(status: Int, team:Team) {
    
    switch status {
    case 1: //Choose your Heroe
        sleep(1)
        print("\(team.nameTeam) ▶︎▶︎ 🥇 Choose your Heroe 🥇: \n1️⃣ ▶︎▶︎ \(team.character1!.playerName) the \(team.character1!.type) ▶︎▶︎ Power = \(team.character1!.weapon.damage) pv \n2️⃣ ▶︎▶︎ \(team.character2!.playerName) the \(team.character2!.type) ▶︎▶︎ Power = \(team.character2!.weapon.damage) pv \n3️⃣ ▶︎▶︎ \(team.character3!.playerName) the \(team.character3!.type) ▶︎▶︎ Power = \(team.character3!.weapon.damage) pv \n⏳------------------------------------Enter your choice-------------------------------------------⌛️")
        sleep(1)
    case 2: //Choose the character on your team you want to heal
        sleep(1)
        print("🧙🏻‍♀️-💊 Choose the character on your team you want to heal 💊-🧙🏻‍♀️: \n1️⃣ ▶︎▶︎ \(team.character1!.playerName) the \(team.character1!.type) ▶︎▶︎ Life = \(team.character1!.pv) pv \n2️⃣ ▶︎▶︎ \(team.character2!.playerName) the \(team.character2!.type) ▶︎▶︎ Life = \(team.character2!.pv) pv \n3️⃣ ▶︎▶︎ \(team.character3!.playerName) the \(team.character3!.type) ▶︎▶︎ Life = \(team.character3!.pv) pv \n⏳------------------------------------Enter your choice-------------------------------------------⌛️")
        sleep(1)
    case 3: //Choose the character you want to attack
        sleep(1)
        print("💥 Choose the \(team.nameTeam) character you want to attack 💥: \n1️⃣ ▶︎▶︎ \(team.character1!.playerName) the \(team.character1!.type) -> Life = \(team.character1!.pv) pv \n2️⃣ ▶︎▶︎ \(team.character2!.playerName) the \(team.character2!.type) ▶︎▶︎ Life = \(team.character2!.pv) pv \n3️⃣ ▶︎▶︎ \(team.character3!.playerName) the \(team.character3!.type) -> Life = \(team.character3!.pv) pv \n⏳------------------------------------Enter your choice-------------------------------------------⌛️")
        sleep(1)
    default:
        print("⛔️Error in printTeam() Function⛔️")
    }
}

/*
 Check of the state of life of the chosen character
 If the number of life points is less than or equal to zero then the boolean is modified
 */
func checkCharactIsDead(character:Character) -> Bool {
    if character.pv <= 0 {
        print("‼️\(character.playerName) is already dead , you have to choose another character‼️")
        return false
    }
    return true
}

/*
 Random function for the magic box
 1 in 4 chance
 */
func magicBox() -> Bool {
    let randomNumber = Int.random(in: 1..<4) //Initializes the variable with an integer between 1 and 4
    //If the integer is equal to 2 then returns true
    if randomNumber == 2 {
        return true
    }else {
        return false
    }
}

/*
 Function that receives in parameters the character chosen to attack and the character of the opposing team
 If the magicBox appears then the weapon used for the attack is different from the initial weapon
 If the hero is a mage then the points are added
 
 */
func action(heroe:Character, enemy:Character, status:Int) {
    
    switch status {
    case 1: //The case of the magus
        enemy.pv += heroe.weapon.damage
        if enemy.pv > enemy.pvInit{
            enemy.pv = enemy.pvInit
            print("🧙🏻‍♀️-🚫 \(enemy.playerName) has reached his maximum health point 🚫-🧙🏻‍♀️")
        }
        sleep(1)
    case 2://Call the magicBox() function to make the safe appear or not
        if magicBox() == true {
            magicBoxWeapon = MagicWeapon()
            print("✨-----------------------------------🍀Wait a Moment🍀------------------------------------------✨")
            sleep(1)
            print("✨---------------------------------🎁What's in the box?🎁-----------------------------------------✨")
            sleep(1)
            print("✨--------------------------------⚔️It's a magic weapon⚔️-----------------------------------------✨\n🥊---------For this trick, your weapon will be magical and will generate \(magicDamage) of damage---------🥊")
            sleep(1)
            enemy.pv -= magicBoxWeapon!.damage //Subtraction of hit points based on weapon damage
            sleep(1)
        }else{
            enemy.pv -= heroe.weapon.damage //Subtraction of hit points based on weapon damage
            sleep(1)
        }
        
    default:
        print("⛔️Error in action() Function⛔️")
    }
    roundCount += 1 //Incrementing the round counter
    sleep(1)
    //If the character's total life points are zero then the character is dead
    if enemy.pv <= 0 {
        print("💀\(enemy.playerName) is dead💀")
        enemy.pv = 0 //Resetting the dead character's life counter 
    }
    sleep(2)
}
