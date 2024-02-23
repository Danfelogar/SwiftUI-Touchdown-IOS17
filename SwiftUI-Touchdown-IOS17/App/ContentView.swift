//
//  ContentView.swift
//  SwiftUI-Touchdown-IOS17
//
//  Created by Daniel Felipe on 19/02/24.
//

import SwiftUI

struct ContentView: View {
    //MARK: - Properties
    @EnvironmentObject var shop: Shop
    //MARK: - Body
    var body: some View {
        ZStack {
            if shop.showingProduct == false && shop.selectedProduct == nil {
                VStack(spacing: 0) {
                    NavigationBarView()
                        .padding(.horizontal, 15)
                        .padding(.bottom)
                        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                        .background(Color.white)
                        .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack {
                            FeaturedTabView()
                                //.frame(height: UIScene.main.bounds.width / 1.475)
                                .frame(minHeight: 256)
                                .padding(.vertical, 10)

                            CategoryGridView()
                            
                            TitleView(title: "Helmet")
                            
                            LazyVGrid(columns: gridLayout, spacing: 15) {
                                ForEach(products) { product in
                                        ProductItemView(product: product)
                                        .onTapGesture {
                                            feedback.impactOccurred()

                                            withAnimation(.easeOut){
                                                shop.selectedProduct = product
                                                shop.showingProduct = true
                                            }
                                        }
                                }//: Loop
                            }//:LazyVGrid
                            .padding(15)
                            
                            TitleView(title:"Brands")
                            
                            BrandGridView()

                            FooterView()
                                .padding(.horizontal)
                        }//: VStack
                    }//: Scroll
                }//: VStack
                .background(colorBackground.ignoresSafeArea(.all, edges: .all))
            } else {
                ProductDeatilView()
            }
        }//: ZStack
        .ignoresSafeArea(.all, edges: .top)
    }
}

#Preview { ContentView().environmentObject(Shop()) }
