//
//  FoodView.swift
//  HealthyHabits
//
//  Created by Nicole Park on 5/3/24.
//

import SwiftUI

struct FoodView: View {
    var body: some View {
        VStack {
            NavigationLink("Vegetarian"){
                VegetarianView()
            }
            NavigationLink("Vegan"){
                VeganView()
            }
            NavigationLink("Keto"){
                KetoView()
            }
            NavigationLink("Balanced"){
                BalancedView()
            }
            
        }
    }
}
