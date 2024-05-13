//
//  FoodView.swift
//  HealthyHabits
//
//  Created by Nicole Park on 5/3/24.
//

import SwiftUI
import WebKit

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
            NavigationLink("Calorie Control"){
                CalorieControlView()
            }
            NavigationLink("Hydrated"){
                HydratedView()
            }
            NavigationLink("Nutritious"){
                NutritiousView()
            }
            NavigationLink("Cutting Sugar"){
                CuttingSugarView()
            }
        }
    }
}
