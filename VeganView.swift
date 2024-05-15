//
//  VeganView.swift
//  HealthyHabits
//
//  Created by Neha Darji on 5/13/24.
//

import SwiftUI

struct VeganView: View {
    let MacSaladURL = URL(string: "https://www.noracooks.com/vegan-macaroni-salad/")!
    let WhiteBeanURL = URL(string: "https://www.noracooks.com/white-bean-soup/")!
    let VeganURL = URL(string: "https://www.noracooks.com/vegan-lo-mein/")!
    var body: some View {
        Button(action: {
            Link("Macaroni Salad", destination: MacSaladURL)
        }, label: {
            Image("6")
                .resizable()
                .frame(width: 100, height: 100)
        })
        
        Button(action: {
            Link("White Bean Soup", destination: WhiteBeanURL)
        }, label: {
            Image("7")
                .resizable()
                .frame(width: 100, height: 100)
        })
        Button(action: {
            Link("Vegan Lo Mein", destination: VeganURL)
        }, label: {
            Image("3")
                .resizable()
                .frame(width: 100, height: 100)
        })
//        Button(action: {
//            Link("7 Layer Dip", destination: SevenLayerURL)
//        }, label: {
//            Image("4")
//                .resizable()
//                .frame(width: 100, height: 100)
//        })
//        Button(action: {
//            Link("Creamy Cavatappi", destination: creamyURL)
//        }, label: {
//            Image("5")
//                .resizable()
//                .frame(width: 100, height: 100)
//        })
    }
}

#Preview {
    VeganView()
}
