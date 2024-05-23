//
//  CollectionView.swift
//  Snacks-shop-app
//
//  Created by Nursat Sakyshev on 24.05.2024.
//

import SwiftUI

struct CollectionView: View {
    @Environment(\.presentationMode) var mode
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    HStack {
                        Text("Order From The Best OF **Snacks**")
                            .font(.system(size: 30))
                            .padding(.trailing)
                        
                        Spacer()
                        
                        Button(action: {
                            mode.wrappedValue.dismiss()
                        }, label: {
                            Image(systemName: "arrow.left")
                                .imageScale(.large)
                                .padding()
                                .frame(width: 70, height: 90)
                                .overlay {
                                    RoundedRectangle(cornerRadius: 50).stroke().opacity(0.4)
                                }
                        })
                        .foregroundColor(.black)
                    }
                    .padding(30)
                    
                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], content: {
                        ForEach(products, id: \.id) { product in
                            SmallProductCard(product: product)
                        }
                    })
                    .padding(.horizontal)
                }
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    CollectionView()
}
