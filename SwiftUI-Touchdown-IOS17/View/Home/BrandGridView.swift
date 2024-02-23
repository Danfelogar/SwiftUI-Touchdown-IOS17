//
//  BrandGridView.swift
//  SwiftUI-Touchdown-IOS17
//
//  Created by Daniel Felipe on 19/02/24.
//

import SwiftUI

struct BrandGridView: View {
    //MARK: - Properties
    //MARK: - Body
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayout, spacing: columnSpacing){
                ForEach(brands) { brand in
                        BrandItemView(brand: brand)
                }//:Loop
            }//: LazyHGrid
            .frame(height: 200)
            .padding(15)
        }//: Scroll
    }
}

#Preview { BrandGridView() }
