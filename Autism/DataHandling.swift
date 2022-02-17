//
//  DataHandling.swift
//  Autism
//
//  Created by Francesco Viola on 16/02/22.
//

import Foundation
import SwiftUI
public class Card {
    private var id : UUID
    private var title : String
    private var image : UIImage 
//    private var text : String
    init (id : UUID,title : String , image : UIImage ) { //si inizializza card
        self.id = UUID()
        self.title = title
        self.image = image
        addToInterface(card: self , number: 3)
  }
    func editCard(id : UUID,title : String , image : UIImage) {
        if (self.id != id ) {
            self.id = UUID()
        }
        if (self.title != title ) {
            self.title = title
        }
        self.title = title
        self.image = image
        
    }
//TO DO DEINITIALIZER
    
}
var message = [String]()
func addMessage(text:  String) {
    message.append(text)
}
struct Interface {
    var Number : Int
    var vettCard : [Card]
}
var vettInterfaces = [Interface]()

 
var N: Int = 4
//add card to interface
func addToInterface(card: Card,number: Int) {
    vettInterfaces[N].vettCard.append(card)
}
//delete card
func deleteFromInterface(Number: Int) {
    vettInterfaces[N].vettCard.remove(at: N)
}


//TO DO ADD CARD TO INTERFACE --DONE IN THE CLASS 
func addCard(card : Card,intNumber : Int)  {
    //accedere al vettore di interfacce e selezionare l interfaccia giusta
    //successivamente aggiungere la card all interfaccia
//    Interface = Interface.InterfaceNumber
 //    Interface.vettCard.insert(card)
    
}





//TO DO Image converter for SwiftUI
