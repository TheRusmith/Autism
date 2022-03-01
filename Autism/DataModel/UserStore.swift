//
//  UserStore.swift
//  Autism
//
//  Created by Mariano Piscitelli on 21/02/22.
//

import Foundation
import UIKit

class UserStore: ObservableObject, Identifiable {
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
                                    Want(title:"Play",imageName: "fox"),
                                    Want(title:"Go",imageName: "fox")]
    
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
   
    
   
    //wants.insert(Want(title: "brividi ", imageName: "photo")
   //var wants = [Want(title: "Cane",imageName: "photo")]
}

class testData : ObservableObject, Identifiable {
    @Published var title : String
    @Published var image : String
    
    init(title : String, image : String) {
        self.title = title
        self.image = image
    }
    
    
}


var want : [testData] = [
testData(title: "Cane", image: "Gatto")
]




//feels = [Want1,Want2]

func appendWants(title: String ,imageName: String) {
    UserStore().wants.append(Want(title: title, imageName: imageName))
}

//Image(uiImage: UIImage(named: hr.imageName)!)

/* ForEach(UserStore().wants, id: \.self) { want in
    Text( want.title)
   Image(uiImage: UIImage(named: want.imageName)!)
//} */


