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
    
    @Published var wants: [Want] = [Want(title: "Eat",imageName: "fox"),
                                    Want(title:"Drink",imageName: "fox"),
                                    Want(title:"Play",imageName: "fox"),
                                    Want(title:"Go",imageName: "fox")]
    
    @Published var wantplay: [WantPlay] = [WantPlay(title: "Playstation 5", imageName: "GIOCO")]
    
    @Published var wanteat: [WantEat] = [WantEat(title: "Burger",imageName: "fox"),
                                         WantEat(title:"Pizza",imageName: "fox"),
                                         WantEat(title:"Ice Cream",imageName: "fox"),
                                         WantEat(title:"Chips",imageName: "fox"),
                                         WantEat(title:"Chocolate",imageName: "fox")]
    
    @Published var wantdrink : [WantDrink] = [WantDrink(title: "Water", imageName: "acqua"),
                                              WantDrink(title: "CocaCola", imageName: "cocacola"),
                                              WantDrink(title: "Milk", imageName: "lattescremato")]
    @Published var wantgo : [WantGo] = []
    
    @Published var wantpeople : [WantPeople] = []
   
    @Published var needs = []
   
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


