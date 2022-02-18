//
//  NavigationView.swift
//  Autism
//
//  Created by Mariano Piscitelli on 17/02/22.
//

import Foundation
import SwiftUI

struct Navigation: View {
    
    
    @SceneStorage("activeTab") private var activeTab = Tab.home
    
    enum Tab: Int {
        case home, favourite, create
    }
    
    init() {
        //      UITabBar.appearance().backgroundColor = UIColor.red // colore sfondo tab ba intera
        //       UITabBar.appearance().isTranslucent = true
        UITabBar.appearance().unselectedItemTintColor = UIColor.lightGray //colore icone disattive
        
    }
    
    var body: some View {
        TabView(selection: $activeTab) {
            
            HomeView()
                .tabItem{
                    Label("Home", systemImage: "house.fill")
                }
            FavView()
                .tabItem{
                    Label ("Favorites", systemImage: "heart.fill")
                }
            CreateView()
                .tabItem{
                    Label("Create", systemImage: "pencil.circle.fill")
                    
                }
        }
        .accentColor(Color.red)  //qui si cambia il colore dell'elemento selezionato nella tab bar
    }
}

struct Navigation_Previews: PreviewProvider {
    static var previews: some View {
        Navigation()
    }
}

