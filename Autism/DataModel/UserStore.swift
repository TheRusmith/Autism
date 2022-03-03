//
//  UserStore.swift
//  Autism
//
//  Created by Mariano Piscitelli on 21/02/22.
//

import Foundation
import UIKit
import SwiftUI
class UserStore: NSObject,ObservableObject, Identifiable  {
    @Published var category: Category? = nil
    @Published var level1: Level1? = nil
    @Published var level2: Level2? = nil
    @Published var level3: Level3? = nil
    
    @Published var feels: [Feel] = [Feel(title: "Happy", imageName: "happy"),
                                    Feel(title: "Tired", imageName: "tired"),
                                    Feel(title: "Sick", imageName: "sick"),
                                    Feel(title: "Angry", imageName: "angry"),
                                    Feel(title: "Sad", imageName: "sad")]
    
    @Published var wants: [Want] = [Want(title: "Eat",imageName: "burger"),
                                    Want(title:"Drink",imageName: "climbing"),
                                    Want(title:"Play",imageName: "ball"),
                                    Want(title:"Go",imageName: "playground"),
                                    Want(title:"People",imageName: "dad")]
    
    @Published var wantplay: [WantPlay] = [WantPlay(title: "Football",imageName: "ball"),
                                           WantPlay(title: "Soap bubbles",imageName: "penguin"),
                                           WantPlay(title: "Balloons",imageName: "balloons"),
                                           WantPlay(title: "Basketball",imageName: "basketball"),
                                           WantPlay(title: "Puzzle",imageName: "puzzle"),
                                           WantPlay(title: "Climbing Stairs",imageName: "climbing")]
    
    
    @Published var wanteat: [WantEat] = [WantEat(title: "Burger",imageName: "burger"),
                                         WantEat(title:"Pizza",imageName: "pizza"),
                                         WantEat(title:"Ice Cream",imageName: "icecream"),
                                         WantEat(title:"Chips",imageName: "chips"),
                                         WantEat(title:"Chocolate",imageName: "chocolate"),
                                         WantEat(title:"Cotton Candy",imageName: "cottoncandy")]
    
    @Published var wantdrink : [WantDrink] = [WantDrink(title: "Coca",imageName: "cola"),
                                              WantDrink(title:"Fanta",imageName: "fanta"),
                                              WantDrink(title:"Water",imageName: "water"),
                                              WantDrink(title:"Juice",imageName: "juice"),
                                              WantDrink(title:"Sprite",imageName: "sprite"),
                                              WantDrink(title:"Lemonade",imageName: "limonata")]
    
    @Published var wantgo : [WantGo] = [WantGo(title: "Playground",imageName: "playground"),
                                        WantGo(title:"Cinema",imageName: "cinema"),
                                        WantGo(title:"Zoo",imageName: "zoo"),
                                        WantGo(title:"Home",imageName: "home"),
                                        WantGo(title:"Park",imageName: "park")]
    
    @Published var wantpeople : [WantPeople] = [WantPeople(title: "Dad",imageName: "dad"),
                                                WantPeople(title:"Mum",imageName: "mum"),
                                                WantPeople(title:"Brother",imageName: "brother"),
                                                WantPeople(title:"Sister",imageName: "sister"),
                                                WantPeople(title:"Grandfather",imageName: "grandfather"),
                                                WantPeople(title:"Grandmother",imageName: "grandmother")]
    
    @Published var messages = [String]()
    func appendWants(title: String ,imageName: String) {
        UserStore().wants.append(Want(title: title, imageName: imageName))
    }
    
    
    func appendText(step: String) {
        messages.append(step)
    }
    func deleteText() {
        messages.removeLast()
    }
    
}


var messages2 = [String]()
    func appendStep (step : String)  {
        messages2.append(step)
    }

    func deleteStep () {
        messages2.removeLast()
    }



var ChooseFriend = ["dog","fox","cat","tex"]
enum chosenFriend {
    case dog
    case fox
    case cat
    case tex
}
var choosen = chosenFriend.dog
var choosen2 = chosenFriend.cat


enum views {
    case want
    case wanteat
    case wantplay
}
//NavigationLink(destination: RecipeItemDetailView(recipe: $recipeArray[index]))
//NavigationLink(destination: ChoiceView(selection: $selection[index]))
let speechservice = SpeechService()
