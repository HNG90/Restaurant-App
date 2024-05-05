//
//  MenuItem.swift
//  Menu
//
//  Created by Hiren Gandhi on 6/23/23.
//

import Foundation

//Create MenuItem structure to represent the different properties of the menu such as price and image
//Also conforms to identifiable using a random id
struct MenuItem: Identifiable{
    var id: UUID = UUID()
    var name:String
    var price:String
    var imageName:String
}
