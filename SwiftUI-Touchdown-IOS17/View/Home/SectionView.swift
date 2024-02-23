//
//  SectionView.swift
//  SwiftUI-Touchdown-IOS17
//
//  Created by Daniel Felipe on 19/02/24.
//

import SwiftUI

struct SectionView: View {
    //MARK: - Properties
    @State var rotateClockwise: Bool
    //MARK: - Body
    var body: some View {
        VStack{
            Spacer()

            Text("categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: rotateClockwise ? 90 : -90))
        
            Spacer()
        }//: VStack
        .background(colorGray.cornerRadius(12))
        .frame(width: 85)
    }
}

#Preview { SectionView(rotateClockwise: false) }
