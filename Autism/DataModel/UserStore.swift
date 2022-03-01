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
    
    @Published var feels: [Feel] = [Feel(title: "Happy", imageName: "fox"),
                                    Feel(title: "Tired", imageName: "fox"),
                                    Feel(title: "Sick", imageName: "fox"),
                                    Feel(title: "Angry", imageName: "fox"),
                                    Feel(title: "Sad", imageName: "fox")]
    
    @Published var wants: [Want] = [Want(title: "Eat",imageName: "fox"),
                                    Want(title:"Drink",imageName: "fox"),
                                    Want(title:"Play",imageName: "fox"),
                                    Want(title:"Go",imageName: "fox")]
    
    @Published var wantplay: [WantPlay] = []
    
    @Published var wanteat: [WantEat] = [WantEat(title: "Burger",imageName: "fox"),
                                         WantEat(title:"Pizza",imageName: "fox"),
                                         WantEat(title:"Ice Cream",imageName: "fox"),
                                         WantEat(title:"Chips",imageName: "fox"),
                                         WantEat(title:"Chocolate",imageName: "fox")]
    
    @Published var wantdrink : [WantDrink] = []
    
    @Published var wantgo : [WantGo] = []
    
    @Published var wantpeople : [WantPeople] = []
    //In app text message
    
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
