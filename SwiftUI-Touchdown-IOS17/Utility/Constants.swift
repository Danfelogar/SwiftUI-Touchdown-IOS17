//
//  Constants.swift
//  SwiftUI-Touchdown-IOS17
//
//  Created by Daniel Felipe on 19/02/24.
//

import Foundation
import SwiftUI

//Data
let players: [Player] =  Bundle.main.decode("player.json")
let categories: [Category] =  Bundle.main.decode("category.json")
let products: [Product] =  Bundle.main.decode("product.json")
let brands: [Brand] = Bundle.main.decode("brand.json")
let sampleProduct: Product = products[1]

//Color
let colorBackground: Color = Color("ColorBackground")
let colorGray: Color = Color(UIColor.systemGray4)

//Layout
let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}
//UX
let feedback = UIImpactFeedbackGenerator(style: .medium)
//API

//Image

//Font

//String

//MISC
