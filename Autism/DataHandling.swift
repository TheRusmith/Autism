//
//  DataHandling.swift
//  Autism
//
//  Created by Francesco Viola on 17/02/22.
//

import Foundation     
import SwiftUI
public class Card {
     var id : String
     var title : String
     var image : Image
//    private var text : String
    init () {
        self.id = "NotDefined"
        self.title = "Null"
        self.image = Image(systemName: "gearshape")
        
    }
    //wakanda r3uhwhuwrhjiw
    init(id: String,title: String,image: Image) {
        self.id = id
        self.title = title
        self.image = image
        
    }
    func editCard(id : String ,title : String , image : Image) {
        
            self.id = id
            self.title = title
            self.image = image
        
    }
//TO DO DEINITIALIZER

}
var Card1 = Card(id:"01",title: "watermelon",image: Image("fox"))
//Card1.editCard(id: "watermelon",title : "title ",image: "gearshape"!)

//var cardNuova = Card(id: "watermelon",title: "title")
//var Card2 = Card(id: "cane",title : "image22",image: "image")
var vettInterfaces = [Interface]()
// va bene usare enum???
enum Interfaces: String  {
    case feel,want
}

struct Interface {
    var Name : String
    var vettCard : [Card]
}
//how to connect enum interfaces with interface
var InterfacesWant = Interface(Name: "want",vettCard: [Card]())
//InterfacesWant.vettCard.insert(Card1)

class MyInterface {
    
}
var message = [String]()
func addMessage(text:  String) {
    
    message.append(text)
}



 
var N: Int = 4
//add card to interface
func addToInterface(card: Card,number: Int) {
    vettInterfaces[N].vettCard.append(card)
}
//delete card
func deleteFromInterface(Number: Int) {
    vettInterfaces[N].vettCard.remove(at: N)
}










//TO DO Image converter for SwiftUI
