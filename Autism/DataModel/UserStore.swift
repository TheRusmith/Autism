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
}
