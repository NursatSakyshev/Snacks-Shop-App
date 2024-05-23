//
//  Home.swift
//  Snacks-shop-app
//
//  Created by Nursat Sakyshev on 23.05.2024.
//

import SwiftUI

struct Home: View {
    @State var selectedCategory = ""
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    //Header
                    HStack {
                        Text("Order From The Best OF **Snacks**")
                            .font(.system(size: 30))
                            .padding(.trailing)
                        
                        Spacer()
                        
                        NavigationLink {
                            CartView()
                        } label: {
                            Image(systemName: "line.3.horizontal")
                                .imageScale(.large)
                                .padding()
                                .frame(width: 70, height: 90)
                                .overlay {
                                    RoundedRectangle(cornerRadius: 50).stroke().opacity(0.4)
                                }
                                .foregroundColor(.black)
                        }
                    }
                    .padding(30)
                    categoryListView
                    
                    //Collection View
                    HStack {
                        Text("Choco **Collections**")
                            .font(.system(size: 24))
                        
                        Spacer()
                        
                        NavigationLink {
                            CollectionView()
                        } label: {
                            Image(systemName: "arrow.right")
                                .imageScale(.large)
                        }
                        .foregroundColor(.black)
                    }
                    .padding(.horizontal, 30)
                    .padding(.vertical)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(products, id: \.id) { item in
                                ProductCardView(product: item)
                            }
                        }
                    }
                }
            }
        }
    }
    
    var categoryListView: some View {
        HStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(categoryList, id: \.id) { item in
                        Button {
                            selectedCategory = item.title
                        } label: {
                            HStack {
                                if item.title != "All" {
                                    Image(item.icon)
                                        .resizable()
                                        .renderingMode(.template)
                                        .foregroundColor(selectedCategory == item.title ? .yellow : .black)
                                        .frame(width: 20, height: 20)
                                }
                                Text(item.title)
                            }
                            .padding(20)
                            .background(selectedCategory == item.title ? .black : .gray.opacity(0.1))
                            .foregroundColor(selectedCategory != item.title ? .black : .white)
                            .clipShape(Capsule())
                        }
                        
                    }
                }
                .padding(.horizontal, 30)
            }
        }
    }
}

#Preview {
    Home()
}
