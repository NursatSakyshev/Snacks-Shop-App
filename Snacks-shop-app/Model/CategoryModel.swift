//
//  CategoryModel.swift
//  Snacks-shop-app
//
//  Created by Nursat Sakyshev on 23.05.2024.
//

import Foundation

struct CategoryModel: Identifiable, Hashable {
    var id: UUID = .init()
    var icon: String
    var title: String
}

var categoryList: [CategoryModel] = [
    CategoryModel(icon: "", title: "All"),
    CategoryModel(icon: "choco", title: "Choco"),
    CategoryModel(icon: "waffle", title: "Waffles"),
    CategoryModel(icon: "toffee", title: "Toffee")
]
