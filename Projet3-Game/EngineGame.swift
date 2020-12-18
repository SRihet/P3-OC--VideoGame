//
//  EngineGame.swift
//  Projet3-Game
//
//  Created by Stéphane Rihet on 10/12/2020.
//

import Foundation

// Creation of the two teams useful for the game
var team1 = Team(nameTeam: "team1")
var team2 = Team(nameTeam: "team2")

var currentTeam = Team(nameTeam: "currentTeam") //Knowing the team in play

var nameCharacterList:[String] = [] //List of character names already in use
var roundCount = 0 //Round counter in the game
var magicBoxWeapon: Weapon? // Instanciation of the bonus weapon

// Start the game with explanations
func initGame() {
    print("-----------------------------------------------------------------------------------------------------------------")
    print("Hello, welcome to your new game directed by Stéphane Rihet")
        sleep(1)
    print("I am your assistant and I will guide you through the game.")
        sleep(1)
    print("This game is a multiplayer game, 2 teams of 3 characters and a fight to the death.")
    print("-----------------------------------------------------------------------------------------------------------------")
        sleep(1)
}

//Choose the name of the teams
func nameTeam (){
    
    print("Player 1, please enter the name of your team. ")
    var nameTeam: String
    nameTeam = readLine()! // Returns a string read from standard input
    team1.nameTeam = nameTeam //Assigns the return value to the variable
        sleep(1)
    print("Player 1, your team name is \(team1.nameTeam)")
    print("-----------------------------------------------------------------------------------------------------------------")
        sleep(1)
    print("Player 2, please enter the name of your team. ")
    nameTeam = readLine()! // Returns a string read from standard input
    team2.nameTeam = nameTeam //Assigns the return value to the variable
        sleep(1)
    print("Player 2, your team name is \(team2.nameTeam)")
        sleep(1)
    
    
}

//Choose the 3 characters that make up the team
func chooseCharacter() {
    var numberOfCharacter = 0 //Character number counter
    print("-----------------------------------------------------------------------------------------------------------------")
    print("Team \(currentTeam.nameTeam): You can select your 3 heroes!")
        sleep(1)
    
    while numberOfCharacter < 3 { // loop in relation to the character counter
        print("Choose a character :")
        print(" 1 -> Knight, \(knightPv)PV & \(knightDammage) Dammage")
        print(" 2 -> Goblin, \(goblinPv)PV & \(goblinDammage) Dammage")
        print(" 3 -> Ogre, \(ogrePv)PV & \(ogreDammage) Dammage")
        print(" 4 -> Centaur, \(CentaurPv)PV & \(CentaurDammage) Dammage")
        print(" 5 -> Elf, \(elfPv)PV & \(elfDammage) Dammage")
        print("-------------------------------------Enter your choice--------------------------------------------")
        
        if let choiceCharacter = readLine() {// Returns a string read from standard input
            
            var choiceIsOK = false // Boolean to validate console return
            
            switch choiceCharacter { //Flow control
            case "1":
                numberOfCharacter += 1 //Counter increment
                while choiceIsOK == false { //Loop in relation to the validation of the choice
                    print("You have selected the Knight, please choose a name for it.")
                    let nameCharacter = readLine()! // Returns a string read from standard input
                    let checkName = checkNameDifferent(name: nameCharacter) //Check that the name is not used
                    if checkName == true {
                        addToTeam(numberCharacter: numberOfCharacter, character: Knight(playerName: nameCharacter)) //Adding the character to the team
                        nameCharacterList.append(nameCharacter) //Adding the name to the list
                        choiceIsOK = true //Changing the Boolean value if the name is not used
                    }else{
                        print("This name is already in use")
                        choiceIsOK = false //Changing the Boolean value if the name is used
                        
                    }
                }
                
            case "2":
                numberOfCharacter += 1
                while choiceIsOK == false {
                    print("You have selected the Goblin, please choose a name for it.")
                    let nameCharacter = readLine()!
                    let checkName = checkNameDifferent(name: nameCharacter)
                    if checkName == true {
                        addToTeam(numberCharacter: numberOfCharacter, character: Goblin(playerName: nameCharacter))
                        nameCharacterList.append(nameCharacter)
                        choiceIsOK = true
                    }else{
                        print("This name is already in use")
                        choiceIsOK = false
                    }
                }
            case "3":
                numberOfCharacter += 1
                while choiceIsOK == false {
                    print("You have selected the Ogre, please choose a name for it.")
                    let nameCharacter = readLine()!
                    let checkName = checkNameDifferent(name: nameCharacter)
                    if checkName == true {
                        addToTeam(numberCharacter: numberOfCharacter, character: Ogre(playerName: nameCharacter))
                        nameCharacterList.append(nameCharacter)
                        choiceIsOK = true
                    }else{
                        print("This name is already in use")
                        choiceIsOK = false
                    }
                }
            case "4":
                numberOfCharacter += 1
                while choiceIsOK == false {
                    print("You have selected the Centaur, please choose a name for it.")
                    let nameCharacter = readLine()!
                    let checkName = checkNameDifferent(name: nameCharacter)
                    if checkName == true {
                        addToTeam(numberCharacter: numberOfCharacter, character: Centaur(playerName: nameCharacter))
                        nameCharacterList.append(nameCharacter)
                        choiceIsOK = true
                    }else{
                        print("This name is already in use")
                        choiceIsOK = false
                    }
                }
            case "5":
                numberOfCharacter += 1
                while choiceIsOK == false {
                    print("You have selected the Elf, please choose a name for it.")
                    let nameCharacter = readLine()!
                    let checkName = checkNameDifferent(name: nameCharacter)
                    if checkName == true {
                        addToTeam(numberCharacter: numberOfCharacter, character: Elf(playerName: nameCharacter))
                        nameCharacterList.append(nameCharacter)
                        choiceIsOK = true
                    }else{
                        print("This name is already in use")
                        choiceIsOK = false
                    }
                }
            default:
                print("I didn't understand, please type a number between 1 and 5 to select a character.")
                    sleep(1)
            }
        }
    }
}

//Function that checks whether the name entered is already in the list, it returns a boolean
func checkNameDifferent (name:String) -> Bool {
    
    let name = name //Parameter received by the function
    var test:Bool = true //Initialization of the boolean
    
    //Loop to compare the parameter with all the data in the list.
    for unNom in nameCharacterList {
        if name == unNom {
            test = false // If the parameter is identical to one of the values in the list, then the boolean value is false.
            return test
        }
        test = true
        
    }
    return test
}

/*
Function that receives an integer and a character as parameters,
Use to add the character to the team
*/
func addToTeam(numberCharacter: Int, character: Character) {
    
    if numberCharacter == 1 {
        currentTeam.character1 = character
    }
    if numberCharacter == 2 {
        currentTeam.character2 = character
    }
    if numberCharacter == 3 {
        currentTeam.character3 = character
    }
}

//Calculate the total number of health points in a team and returns the total
func teamLife(team:Team) -> Int {
    //Add the Life Points of each character in the team
    let teamLifetotal = team.character1!.pv + team.character2!.pv + team.character3!.pv
    
    return teamLifetotal
}

//All the steps of a round
func fight()  {
    //creation of variables
    var choiceHeroe:Character
    var choiceEnemy:Character
    print("-----------------------------------------------------------------------------------------------------------------")
    print("\(team1.nameTeam) ! it's your turn to play")
    choiceHeroe = chooseFightCharacter(team: team1) //Choose a character in your team
    choiceEnemy = chooseEnemyCharacter(team: team2) //Choose a character from the opponent's team
    action(heroe:choiceHeroe, enemy:choiceEnemy) //Manipulation of hit points
    //Checking the opposing team's point total
    if teamLife(team: team2) > 0 {
        print("-----------------------------------------------------------------------------------------------------------------")
        print("\(team2.nameTeam) ! it's your turn to play")
        choiceHeroe = chooseFightCharacter(team: team2)
        choiceEnemy = chooseEnemyCharacter(team: team1)
        action(heroe:choiceHeroe, enemy:choiceEnemy)
    }
    
}

/*
 Choose a character from your team
 returns the chosen character
 */
func chooseFightCharacter(team: Team) ->Character{
    //creation of variables
    var myHero:Character?
    var choiceIsOK = false // Boolean to validate console return
    
    print("\(team.nameTeam) -> Choose your Heroe to attack your adversary :")
        sleep(1)
    print(" 1 -> \(team.character1!.playerName) the \(team.character1!.type) -> Dammage = \(team.character1!.weapon.damage) pv")
    print(" 2 -> \(team.character2!.playerName) the \(team.character2!.type) -> Dammage = \(team.character2!.weapon.damage) pv")
    print(" 3 -> \(team.character3!.playerName) the \(team.character3!.type) -> Dammage = \(team.character3!.weapon.damage) pv")
    print("-------------------------------------Enter your choice--------------------------------------------")
        sleep(1)
    //Loop in relation to the validation of the choice
    while choiceIsOK == false {
        
        if let heroe = readLine() { // Returns a string read from standard input
            
            switch heroe {
            case "1":
                myHero = team.character1! //Initialize the variable with the chosen character
                choiceIsOK = true //Changing the Boolean value if the name is not used
            case "2":
                myHero = team.character2!
                choiceIsOK = true
            case "3":
                myHero = team.character3!
                choiceIsOK = true
            default:
                print("I didn't understand, please type a number between 1 and 3 to select your heroe.")
                choiceIsOK = false //Changing the Boolean value if the name is used
            }
        }
    }
        sleep(1)
    
    return myHero! //returns the chosen character
    
}


/*
 Choose a character from the opponent's team
 returns the chosen character
 */
func chooseEnemyCharacter(team: Team) -> Character {
    var theEnemy:Character?
    var choiceIsOK = false
    print("Choose the \(team.nameTeam) character you want to attack:")
    sleep(1)
    print(" 1 -> \(team.character1!.playerName) the \(team.character1!.type) -> Life = \(team.character1!.pv) pv")
    print(" 2 -> \(team.character2!.playerName) the \(team.character2!.type) -> Life = \(team.character2!.pv) pv")
    print(" 3 -> \(team.character3!.playerName) the \(team.character3!.type) -> Life = \(team.character3!.pv) pv")
    print("-------------------------------------Enter your choice--------------------------------------------")
    sleep(1)
    
    while choiceIsOK == false {
        
        if let enemy = readLine() {
            switch enemy {
            case "1":
                theEnemy = team.character1!
                choiceIsOK = true
            case "2":
                theEnemy = team.character2!
                choiceIsOK = true
            case "3":
                theEnemy = team.character3!
                choiceIsOK = true
            default:
                print("I didn't understand, please type a number between 1 and 3 to select your heroe.")
                choiceIsOK = false
            }
            
        }
    }
    sleep(1)
    return theEnemy!
    
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
 */
func action(heroe:Character, enemy:Character) {
    //Call the magicBox() function to make the safe appear or not
    if magicBox() == true {
        magicBoxWeapon = MagicWand()
        print("-------------------------------------Wait a Moment--------------------------------------------")
            sleep(1)
        print("-------------------------------------Wait a Moment--------------------------------------------")
            sleep(1)
        print("-------------------------------------What's in the box?--------------------------------------------")
            sleep(1)
        print("------------It's a magic wand---------------")
        print("-------------------------------------It's a magic wand--------------------------------------------")
        print("------For this trick, your weapon will be magical and will generate \(magicDamage) of damage------")
            sleep(1)
        enemy.pv -= magicBoxWeapon!.damage //Subtraction of hit points based on weapon damage
            sleep(1)
        print("\(heroe.playerName) attack \(enemy.playerName) and robs him of \(magicBoxWeapon!.damage)")
        print("\(enemy.pv) pv left to \(enemy.playerName)")
    }else{
        enemy.pv -= heroe.weapon.damage //Subtraction of hit points based on weapon damage
            sleep(1)
        print("\(heroe.playerName) attack \(enemy.playerName) and robs him of \(heroe.weapon.damage)")
        print("\(enemy.pv) pv left to \(enemy.playerName)")
    }
    roundCount += 1 //Incrementing the round counter
        sleep(1)
    //If the character's total life points are zero then the character is dead
    if enemy.pv <= 0 {
        print("\(enemy.playerName) is dead")
        enemy.pv = 0 //Resetting the dead character's life counter    }else {
        
    }
    
            sleep(2)
}

//Winner display function and game statistics
func winner() {
        sleep(2)
    print("-------------------------------------------------------------------")
    print("the game ended in \(roundCount) rounds")
    print("-------------------------------------------------------------------")
        sleep(2)
    //Verification of the winning team
    if teamLife(team: team1) <= 0 {
        print("👑\(team2.nameTeam) Wins, Congratulations!")
        print("-------------------------------------------------------------------")
        print("Winning team statistics:")
        print("\(team2.character1!.playerName) the \( team2.character1!.type) with \(team2.character1!.pv) points remaining out of \(team2.character1!.pvInit)")
        print("\(team2.character2!.playerName) the \( team2.character2!.type) with \(team2.character1!.pv) points remaining out of \(team2.character2!.pvInit)")
        print("\(team2.character3!.playerName) the \( team2.character3!.type) with \(team2.character3!.pv) points remaining out of \(team2.character3!.pvInit)")
        print("-------------------------------------------------------------------")
            sleep(2)
        print("☠️\(team1.nameTeam) has lost")
        print("-------------------------------------------------------------------")
        print("Losing team statistics:")
        print("\(team1.character1!.playerName) the \( team1.character1!.type) is dead")
        print("\(team1.character2!.playerName) the \( team1.character2!.type) is dead")
        print("\(team1.character3!.playerName) the \( team1.character3!.type) is dead")
        print("-------------------------------------------------------------------")
        
    }
    else{
        print("👑\(team1.nameTeam) wins, Congratulations!")
        print("-----------------------------👑👑👑-----------------------------------")
        print("Winning team statistics:")
        print("\(team1.character1!.playerName) the \( team1.character1!.type) with \(team1.character1!.pv) points remaining out of \(team1.character1!.pvInit)")
        print("\(team1.character2!.playerName) the \( team1.character2!.type) with \(team1.character1!.pv) points remaining out of \(team1.character2!.pvInit)")
        print("\(team1.character3!.playerName) the \( team1.character3!.type) with \(team1.character3!.pv) points remaining out of \(team1.character3!.pvInit)")
        print("-----------------------------👑👑👑-----------------------------------")
            sleep(2)
        print("☠️\(team2.nameTeam) has lost")
        print("-----------------------------☠️☠️☠️-----------------------------------")
        print("Losing team statistics:")
        print("\(team2.character1!.playerName) the \( team2.character1!.type) is dead")
        print("\(team2.character2!.playerName) the \( team2.character2!.type) is dead")
        print("\(team2.character3!.playerName) the \( team2.character3!.type) is dead")
        print("-----------------------------☠️☠️☠️-----------------------------------")
    }
    print("---------------------------------------------------------------------------------")}

