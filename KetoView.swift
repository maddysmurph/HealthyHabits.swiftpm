//
//  KetoView.swift
//  HealthyHabits
//
//  Created by Neha Darji on 5/13/24.
//

import SwiftUI

struct KetoView: View {
    let nachosURL = URL(string: "https://www.foodnetwork.com/recipes/food-network-kitchen/bell-pepper-keto-nachos-5224931")!
    let sheetURL = URL(string: "https://www.foodnetwork.com/recipes/food-network-kitchen/keto-sheet-pan-chicken-and-loaded-cauliflower-8050489")!
    let glutenURL = URL(string: "https://www.foodnetwork.com/recipes/food-network-kitchen/gluten-free-keto-meatloaf-7579578")!
    let baconURL = URL(string: "https://www.foodnetwork.com/recipes/keto-bacon-cheeseburger-bowls-9584601")!
    let pizzaURL = URL(string: "https://www.foodnetwork.com/recipes/food-network-kitchen/keto-pizza-snacks-5225642")!
    var body: some View {
        Button(action: {
            Link("Bell Pepper Keto Nachos", destination: nachosURL)
        }, label: {
            Image("11")
                .resizable()
                .frame(width: 250, height: 250)
        })
        
        Button(action: {
            Link("Keto Sheet Pan Chicken and Loaded Cauliflower", destination: sheetURL)
        }, label: {
            Image("12")
                .resizable()
                .frame(width: 250, height: 250)
        })
        Button(action: {
            Link("Gluten Free Keto Meatloaf", destination: glutenURL)
        }, label: {
            Image("13")
                .resizable()
                .frame(width: 250, height: 250)
        })
        Button(action: {
            Link("Keto Bacon Cheeseburger Bowls", destination: baconURL)
        }, label: {
            Image("14")
                .resizable()
                .frame(width: 250, height: 250)
        })
        Button(action: {
            Link("Keto Pizza Snack", destination: pizzaURL)
        }, label: {
            Image("15")
                .resizable()
                .frame(width: 250, height: 250)
        })
    }
}

