//
//  AddToCartDetailView.swift
//  SwiftUI-Touchdown-IOS17
//
//  Created by Daniel Felipe on 19/02/24.
//

import SwiftUI

struct AddToCartDetailView: View {
    //MARK: - Properties
    @EnvironmentObject var shop: Shop
    //MARK: - Body
    var body: some View {
        
        Button {
            feedback.impactOccurred()
        } label: {
            Spacer()

            Text("Add to cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundStyle(.white)
            
            Spacer()
        }//: Btn
        .padding(15)
        .background(
            Color(
                red: shop.selectedProduct?.red ?? sampleProduct.red,
                green: shop.selectedProduct?.green ?? sampleProduct.green,
                blue: shop.selectedProduct?.blue ?? sampleProduct.blue
            )
        )
        .clipShape(Capsule())
    }
}

#Preview { AddToCartDetailView().environmentObject(Shop()) }
