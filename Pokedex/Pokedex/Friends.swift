//
//  Friends.swift
//  Pokedex
//
//  Created by Ang Jun Ray on 26/6/21.
//

import Foundation

struct Friends: Identifiable{
    var id = UUID()
    var name: String
    var rating: Int
}

struct User: Identifiable{
    var id: UUID
    var name: String
}
