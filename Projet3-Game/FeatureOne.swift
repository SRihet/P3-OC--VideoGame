//
//  FeatureOne.swift
//  Projet3-Game
//
//  Created by Stéphane Rihet on 21/12/2020.
//

/*
 1. Initialiser le jeu en demandant à chaque joueur de sélectionner les personnages de son équipe. Le joueur devra choisir pour chaque personnage un nom différent de tous les autres personnages déjà créés dans le jeu.
 */

import Foundation

var currentTeam = Team(nameTeam: "currentTeam") //Knowing the team in play
var nameCharacterList:[String] = [] //List of character names already in use
var numberOfCharacter = 0 //Character number counter

// Start the game with explanations
func initGame() {
    print("----------------------------------------------------------------------------------------------------------------- \n✨✨Hello, Welcome to your new game directed by Stéphane Rihet ✨✨\n🧑🏻‍🏫 I am your assistant and I will guide you through the game. 🧑🏻‍🏫 \n⚔️⚔️ This game is a multiplayer game, 2 teams of 3 characters and a fight to the death ⚔️⚔️. \n-----------------------------------------------------------------------------------------------------------------")
    sleep(1)
}

//Choose the name of the teams
func nameTeam (){
    
    print("⏳ - Player 1, please enter the name of your team - ⌛️  ")
    var nameTeam: String
    nameTeam = readLine()! // Returns a string read from standard input
    team1.nameTeam = nameTeam.capitalized //Assigns the return value to the variable with the first letter in upper case only
    sleep(1)
    print("✅ Player 1, your team name is \(team1.nameTeam) ✅\n---------------------------------------------------------------------------------------------------------------")
    sleep(1)
    print("⌛️ - Player 2, please enter the name of your team - ⌛️ ")
    nameTeam = readLine()! // Returns a string read from standard input
    team2.nameTeam = nameTeam.capitalized //Assigns the return value to the variable with the first letter in upper case only
    sleep(1)
    print("✅ Player 2, your team name is \(team2.nameTeam) ✅\n-----------------------------------------------------------------------------------------------------------------")
    sleep(1)
    
    
}

//Give a name to the character
func editTeam(nbCharact:Int)  {
    var choiceIsOK = false// Boolean to validate console return
    numberOfCharacter += 1 //Counter increment
    while choiceIsOK == false { //Loop in relation to the validation of the choice
        print("⌛️ - Please choose a name for it - ⌛️")
        let nameCharacter = readLine()! // Returns a string read from standard input
        let checkName = checkNameDifferent(name: nameCharacter) //Check that the name is not used
        if checkName == true {
            switch nbCharact {
            case 1:
                addToTeam(numberCharacter: numberOfCharacter, character: Knight(playerName: nameCharacter.capitalized)) //Adding the character to the team
            case 2:
                addToTeam(numberCharacter: numberOfCharacter, character: Goblin(playerName: nameCharacter.capitalized)) //Adding the character to the team
            case 3:
                addToTeam(numberCharacter: numberOfCharacter, character: Ogre(playerName: nameCharacter.capitalized)) //Adding the character to the team
            case 4:
                addToTeam(numberCharacter: numberOfCharacter, character: Centaur(playerName: nameCharacter.capitalized)) //Adding the character to the team
            case 5:
                addToTeam(numberCharacter: numberOfCharacter, character: Elf(playerName: nameCharacter.capitalized)) //Adding the character to the team
            case 6:
                addToTeam(numberCharacter: numberOfCharacter, character: Magus(playerName: nameCharacter.capitalized)) //Adding the character to the team
            default:
                print("‼️ This number is not correct ‼️")
            }
            
            nameCharacterList.append(nameCharacter.uppercased()) //Adding the name to the list
            choiceIsOK = true //Changing the Boolean value if the name is not used
        }else{
            print("⛔️ This name is already in use ⛔️")
            choiceIsOK = false //Changing the Boolean value if the name is used
            
        }
    }
}

//Choose the 3 characters that make up the team
func chooseCharacter() {
    print("----------------------------------------------------------------------------------------------------------------- \n ▶︎▶︎ ✨ Team \(currentTeam.nameTeam): You can select your 3 heroes! ✨")
    sleep(2)
    while numberOfCharacter < 3 { // loop in relation to the character counter
        print("Choose the character \(numberOfCharacter + 1) :  \n1️⃣ ▶︎▶︎ Knight, \(knightPv)PV & \(knightDammage) Dammage \n2️⃣ ▶︎▶︎ Goblin, \(goblinPv)PV & \(goblinDammage) Dammage \n3️⃣ ▶︎▶︎ Ogre, \(ogrePv)PV & \(ogreDammage) Dammage \n4️⃣ ▶︎▶︎ Centaur, \(CentaurPv)PV & \(CentaurDammage) Dammage \n5️⃣ ▶︎▶︎ Elf, \(elfPv)PV & \(elfDammage) Dammage \n6️⃣ ▶︎▶︎ Magus, \(magusPv)PV & \(magusRecovery) Recovery \n⏳------------------------------------Enter your choice-------------------------------------------⌛️")
        
        if let choiceCharacter = readLine() {// Returns a string read from standard input
            
            switch choiceCharacter { //Flow control
            case "1":
                editTeam(nbCharact: 1)//give a name to the character
            case "2":
                editTeam(nbCharact: 2)//give a name to the character
            case "3":
                editTeam(nbCharact: 3)//give a name to the character
            case "4":
                editTeam(nbCharact: 4)//give a name to the character
            case "5":
                editTeam(nbCharact: 5)//give a name to the character
            case "6":
                editTeam(nbCharact: 6)//give a name to the character
            default:
                print("‼️ I didn't understand, please type a number between 1️⃣ and 6️⃣ to select a character ‼️")
                sleep(2)
            }
        }
    }
    numberOfCharacter = 0 //reset counter
}

//Function that checks whether the name entered is already in the list, it returns a boolean
func checkNameDifferent (name:String) -> Bool {
    
    let name = name.uppercased() //Parameter received by the function
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
 Use to add the character to the currentTeam depending on the counter, the character is associated with charact1, charact2 or charact3
 */
func addToTeam(numberCharacter: Int, character: Character) {
    
    if numberCharacter == 1 {
        currentTeam.character1 = character
    }
    if numberCharacter == 2{
        currentTeam.character2 = character
    }
    if numberCharacter == 3 {
        currentTeam.character3 = character
    }
}


