//
//  SmallProductCard.swift
//  Snacks-shop-app
//
//  Created by Nursat Sakyshev on 24.05.2024.
//

import SwiftUI

struct SmallProductCard: View {
    var product: Product
    
    var body: some View {
        ZStack {
            Image(product.image)
                .resizable()
                .scaledToFit()
                .padding(.trailing, -200)
                .rotationEffect(Angle(degrees: 30))
            ZStack {
                VStack(alignment: .leading, content: {
                    Text(product.name)
                        .font(.system(size: 17, weight: .semibold))
                        .frame(width: 80)
                    
                    Text(product.category)
                        .font(.system(size: 10))
                        .padding(13)
                        .background(.white.opacity(0.5))
                        .clipShape(Capsule())
                    
                    Spacer()
                    
                    HStack {
                        Text("$\(product.price).0")
                            .font(.system(size: 15, weight: .semibold))
                        
                        Spacer()
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "basket")
                                .imageScale(.large)
                                .frame(width: 50, height: 30)
                                .background(.black)
                                .clipShape(Capsule())
                                .foregroundColor(.white)
                        }
                        
                    }
                    .padding()
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .frame(height: 40)
                    .background(.white.opacity(0.8))
                    .clipShape(Capsule())
                })
            }
            .padding(10)
        }
        
        .frame(height: 170)
        .padding(10)
        .background(product.color.opacity(0.13))
        .clipShape(.rect(cornerRadius: 30))
        .padding(.leading, 5)
    }
}
