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
    let SweetURL = URL(string: "https://www.noracooks.com/vegan-sweet-potato-black-bean-chili/")!
    let SaladURL = URL(string: "https://www.noracooks.com/vegan-caesar-salad/")!
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
            Image("8")
                .resizable()
                .frame(width: 100, height: 100)
        })
        Button(action: {
            Link("Sweet Potatoe Black Bean Chili", destination: SweetURL)
        }, label: {
            Image("9")
                .resizable()
                .frame(width: 100, height: 100)
        })
        Button(action: {
            Link("The Best Vegan Caesar Salad", destination: SaladURL)
        }, label: {
            Image("10")
                .resizable()
                .frame(width: 100, height: 100)
        })
    }
}

#Preview {
    VeganView()
}
