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
     var image : UIImage
//    private var text : String
    init () {
        self.id = "NotDefined"
        self.title = "Null"
        self.image = UIImage(systemName: "gearshape")!
        
    }
    //wakanda
/*    init (id : UUID,title : String , image : UIImage ) { //si inizializza card
        self.id = UUID()
        self.title = title
        self.image = image
        addToInterface(card: self , number: 3)
  } */
    func editCard(id : String ,title : String , image : UIImage) {
        if (self.id != id ) {
            self.id = id
        }
        if (self.title != title ) {
            self.title = title
        }
        
        self.image = image
        
    }
//TO DO DEINITIALIZER

}
var Card1 = Card()
//edit card function

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
