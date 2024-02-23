//
//  RatingsSizesDetailView.swift
//  SwiftUI-Touchdown-IOS17
//
//  Created by Daniel Felipe on 19/02/24.
//

import SwiftUI

struct RatingsSizesDetailView: View {
    //MARK: - Properties
    let sizes:[String] = ["XS","S","M","L","XL"]
    //MARK: - Body
    var body: some View {
        HStack(alignment: .top, spacing: 3) {
            // Ratings
            VStack(alignment: .leading, spacing: 3) {
                Text("Ratings")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundStyle(.gray)
                
                HStack(alignment: .center, spacing: 3) {
                    ForEach(1...5, id:\.self){item in
                        Button{
                            
                        } label: {
                            Image(systemName: "star.fill")
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(colorGray)
                                .clipShape(RoundedRectangle(cornerRadius:  5))
                                .foregroundStyle(.white)
                        }//: Button
                    }//: Loop
                }//: HStack
            }//: VStack

            Spacer()
            // Sizes
            VStack(alignment: .trailing, spacing: 3){
                Text("Sizes")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundStyle(colorGray)
                
                HStack(alignment: .center, spacing: 5){
                    ForEach(sizes, id:\.self){ size in
                        Button {
                            
                        }label: {
                            Text(size)
                                .font(.footnote)
                                .fontWeight(.heavy)
                                .foregroundStyle(colorGray)
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(Color.white)
                                .clipShape(RoundedRectangle(cornerRadius: 5))
                                .background(
                                    RoundedRectangle(cornerRadius: 5)
                                        .stroke(colorGray, lineWidth: 2)
                                )
                        }
                    }//: Loop
                }//: HStack
            }
        }//: HStack
    }
}

#Preview { RatingsSizesDetailView() }
