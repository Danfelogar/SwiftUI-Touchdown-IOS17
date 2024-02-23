//
//  QuantityFavouriteDetailView.swift
//  SwiftUI-Touchdown-IOS17
//
//  Created by Daniel Felipe on 19/02/24.
//

import SwiftUI

struct QuantityFavouriteDetailView: View {
    //MARK: - Properties
   @State private var counter: Int = 0
    //MARK: - Body
    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            Button {
                if counter > 0{
                    feedback.impactOccurred()
                    counter -= 1
                }
            } label: {
                Image(systemName: "minus.circle")
            }
            
            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(minWidth: 36)
            
            Button {
                if counter < 100{
                    feedback.impactOccurred()
                    counter += 1
                }
            } label: {
                Image(systemName: "plus.circle")
            }
            
            Spacer()
            
            Button {
                feedback.impactOccurred()
            } label: {
                Image(systemName: "heart.circle")
                    .foregroundStyle(.pink)
            }
        }//: HStack
        .font(.system(.title, design: .rounded))
        .foregroundStyle(.black)
        .imageScale(.large)
    }
}

#Preview { QuantityFavouriteDetailView() }
