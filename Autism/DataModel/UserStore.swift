//
//  UserStore.swift
//  Autism
//
//  Created by Mariano Piscitelli on 21/02/22.
//

import Foundation

class UserStore: ObservableObject {
    @Published var category: Category? = nil
    @Published var level1: Level1? = nil
    @Published var level2: Level2? = nil
    @Published var level3: Level3? = nil
    
    @Published var feels: [Feel] = []
    @Published var wants: [Want] = []
    @Published var wantplay: [WantPlay] = []
    @Published var wanteat: [WantEat] = []
    @Published var wantdrink : [WantDrink] = []
    @Published var wantgo : [WantGo] = []
    @Published var wantpeople : [WantPeople] = []
   
   // wants.append(hr)
}



//Image(uiImage: UIImage(named: hr.imageName)!)

//ForEach(UserStore().wants, id: .self) { want in
    //Text( want.title)
//    Image(uiImage: UIImage(named: want.imageName)!)
//}
//
//UserStore().wants.append(Want(title: "", imageName: ""))
