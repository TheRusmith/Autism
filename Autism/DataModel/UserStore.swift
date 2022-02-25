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
    
    @Published var feels: [Feel] = [Feel(title: "test1", imageName: "fox")]
    @Published var wants: [Want] = [Want(title: "Cane",imageName: "fox"),
                                    Want(title:"Gatto",imageName: "fox"),
                                    Want(title:"Cane",imageName: "fox"),
                                    Want(title:"Pappagallo",imageName: "fox")]
    @Published var wantplay: [WantPlay] = []
    @Published var wanteat: [WantEat] = []
    @Published var wantdrink : [WantDrink] = []
    @Published var wantgo : [WantGo] = []
    @Published var wantpeople : [WantPeople] = []
   
    
   
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

