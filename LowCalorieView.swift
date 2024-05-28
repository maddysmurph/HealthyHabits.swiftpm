//
//  LowCalorieView.swift
//  HealthyHabits
//
//  Created by Neha Darji on 5/21/24.
//

import SwiftUI

struct LowCalorieView: View {
    let riceURL = URL(string: "https://www.tasteofhome.com/recipes/chicken-rice-bowl/")!
    let shrimpURL = URL(string: "https://www.tasteofhome.com/recipes/shrimp-tostadas-with-avocado-salsa/")!
    let limeURL = URL(string: "https://www.tasteofhome.com/recipes/grilled-lime-chicken/")!
    let sausageURL = URL(string: "https://www.tasteofhome.com/recipes/sausage-topped-white-pizza/")!
    let kimchiURL = URL(string: "https://www.tasteofhome.com/recipes/kimchi-cauliflower-fried-rice/")!
    var body: some View {
        Button(action: {
            Link("Chicken Rice Bowl", destination: riceURL)
        }, label: {
            Image("rice")
                .resizable()
                .frame(width: 150, height: 150)
        })
        Button(action: {
            Link("Shrimp Toastadas with Avacado Salsa", destination: shrimpURL)
        }, label: {
            Image("rice")
                .resizable()
                .frame(width: 150, height: 150)
        })
        Button(action: {
            Link("Grilled Lime Chicken", destination: limeURL)
        }, label: {
            Image("lime")
                .resizable()
                .frame(width: 150, height: 150)
        })
        Button(action: {
            Link("Sausage Topped White Pizza", destination: sausageURL)
        }, label: {
            Image("sausage")
                .resizable()
                .frame(width: 150, height: 150)
        })
        Button(action: {
            Link("Kimchi Cauliflower Fried Rice", destination: kimchiURL)
        }, label: {
            Image("kimchi")
                .resizable()
                .frame(width: 150, height: 150)
        })

    }
}

