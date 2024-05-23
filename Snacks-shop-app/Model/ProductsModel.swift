//
//  ProductsModel.swift
//  Snacks-shop-app
//
//  Created by Nursat Sakyshev on 23.05.2024.
//

import SwiftUI

struct Product: Identifiable {
    var id: UUID = .init()
    var name: String
    var category: String
    var image: String
    var color: Color
    var price: Int
}

var products = [
    Product(name: "Good Source", category: "Choco", image: "image1", color: .pink, price: 10),
    Product(name: "Unreal Muffins", category: "Choco", image: "image2", color: .yellow, price: 10),
    Product(name: "Twister Chips", category: "Chips", image: "image3", color: .red, price: 10),
    Product(name: "Twister Chips", category: "Chips", image: "image4", color: .green, price: 10),
    Product(name: "Regular Nature", category: "Chips", image: "image5", color: .blue, price: 10),
    Product(name: "Dark Russet", category: "Chips", image: "image6", color: .brown, price: 10),
    Product(name: "Smiths Chips", category: "Chips", image: "image7", color: .orange, price: 10),
    Product(name: "Deep River", category: "Chips", image: "image8", color: .purple, price: 10)
]
