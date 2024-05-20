//
//  BalancedView.swift
//  HealthyHabits
//
//  Created by Neha Darji on 5/13/24.
//

import SwiftUI
let healthyURL = URL(string: "https://www.bbcgoodfood.com/recipes/summer-salmon-pasta")!
let pestoURL = URL(string: "https://www.bbcgoodfood.com/recipes/healthy-pesto-eggs-on-toast")!
let speedyURL = URL(string: "https://www.bbcgoodfood.com/recipes/speedy-lentil-coconut-curry")!
let gnocchiURL = URL(string: "https://www.bbcgoodfood.com/recipes/healthy-gnocchi")!
let crunchyURL = URL(string: "https://www.bbcgoodfood.com/recipes/crunchy-noodle-salad")!

struct BalancedView: View {
    var body: some View {
        VStack{
            Button(action: {
                Link("Healthy Saumon Pasta", destination: healthyURL)
            }, label: {
                Image("16")
                    .resizable()
                    .frame(width: 250, height: 250)
            })
            
            Button(action: {
                Link("Healthy Pesto Eggs on Toast", destination: pestoURL)
            }, label: {
                Image("17")
                    .resizable()
                    .frame(width: 250, height: 250)
            })
            
            Button(action: {
                Link("Speedy Lentil Coconut Curry", destination: speedyURL)
            }, label: {
                Image("18")
                    .resizable()
                    .frame(width: 250, height: 250)
            })
            Button(action: {
                Link("Healthy Gnocchi", destination: gnocchiURL)
            }, label: {
                Image("19")
                    .resizable()
                    .frame(width: 250, height: 250)
            })
            Button(action: {
                Link("Crunchy Noodle Salad", destination: crunchyURL)
            }, label: {
                Image("20")
                    .resizable()
                    .frame(width: 250, height: 250)
            })
        }
    }
}

