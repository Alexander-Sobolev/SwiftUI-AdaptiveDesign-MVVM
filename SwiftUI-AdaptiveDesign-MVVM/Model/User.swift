//
//  User.swift
//  SwiftUI-AdaptiveDesign-MVVM
//
//  Created by Alexander Sobolev on 08.03.2022.
//

import SwiftUI

// MARK: - User Model and Sample Data
struct User: Identifiable {
  var id = UUID().uuidString
  var name: String
  var image: String
  var title: String
}

var users: [User] = [
    User(name: "Jastin", image: "User1", title: "Apple Event is here"),
    User(name: "Jenna", image: "User2", title: "I love Xbox"),
    User(name: "Jessica", image: "User3", title: "New Phone 14 Design"),
    User(name: "Angela", image: "User4", title: "MacBook With Multiple Colors")
]
