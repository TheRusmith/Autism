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
        case home, favourite, ticket
    }
    
    var body: some View {
        TabView(selection: $activeTab) {
            HomeView()
                .tabItem{
                    Label("Home", systemImage: "house.fill")
                }
            FavView()
                .tabItem{
                    Label ("Favorites", systemImage: "star.fill")
                }
            CreateView()
                .tabItem{
                    Label("Create", systemImage: "pencil.circle.fill")
            }
        }
    }
}

struct Navigation_Previews: PreviewProvider {
    static var previews: some View {
        Navigation()
    }
}

