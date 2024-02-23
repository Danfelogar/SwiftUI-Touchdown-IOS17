//
//  NavigationBarDetialView.swift
//  SwiftUI-Touchdown-IOS17
//
//  Created by Daniel Felipe on 19/02/24.
//

import SwiftUI

struct NavigationBarDetialView: View {
    //MARK: - Properties
    @EnvironmentObject var shop: Shop
    //MARK: - Body
    var body: some View {
        HStack {
            Button {
                withAnimation(.easeOut){
                    feedback.impactOccurred()

                    shop.selectedProduct = nil
                    shop.showingProduct = false
                }
            } label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            }
            
            Spacer()
            
            Button {
                
            } label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
            }
        }//: HStack
    }
}

#Preview { NavigationBarDetialView().background(Color.gray).environmentObject(Shop()) }
