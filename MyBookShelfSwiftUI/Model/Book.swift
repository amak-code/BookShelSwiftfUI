//
//  Book.swift
//  MyBookShelfSwiftUI
//
//  Created by antikiller on 07.07.2022.
//

import Foundation

struct Book: Identifiable, Equatable {
    
    var id: String = UUID().uuidString
    var title: String
    var author: String
    var coverArt: String
    var releaseYear: String
    var description: String
}
