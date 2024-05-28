//
//  FoodView.swift
//  HealthyHabits
//
//  Created by Nicole Park on 5/3/24.
//

import SwiftUI

struct FoodView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Food")
                .font(.system(size: 35))
                .foregroundColor(.CustomGreenDark)
                .bold()
            Text("Choose food diet below:")
                .font(.system(size: 20))
                .foregroundColor(.black)
        }
        Divider()
        VStack(alignment: .center, spacing: 15) {
            NavigationLink("Vegetarian"){
                VegetarianView()
            }
            .frame(width: 230, height: 40)
            .font(.system(size: 20))
            .foregroundColor(.white)
            .bold()
            .background(Color.CustomGreenLight)
            .clipShape(RoundedRectangle(cornerRadius: 10.0))
            NavigationLink("Vegan"){
                VeganView()
            }
            .frame(width: 230, height: 40)
            .font(.system(size: 20))
            .foregroundColor(.white)
            .bold()
            .background(Color.CustomGreenLight)
            .clipShape(RoundedRectangle(cornerRadius: 10.0))
            NavigationLink("Keto"){
                KetoView()
            }
            .frame(width: 230, height: 40)
            .font(.system(size: 20))
            .foregroundColor(.white)
            .bold()
            .background(Color.CustomGreenLight)
            .clipShape(RoundedRectangle(cornerRadius: 10.0))
            NavigationLink("Balanced"){
                BalancedView()
            }
            .frame(width: 230, height: 40)
            .font(.system(size: 20))
            .foregroundColor(.white)
            .bold()
            .background(Color.CustomGreenLight)
            .clipShape(RoundedRectangle(cornerRadius: 10.0))
            NavigationLink("Nutritious"){
                NutritiousView()
            }
            .frame(width: 230, height: 40)
            .font(.system(size: 20))
            .foregroundColor(.white)
            .bold()
            .background(Color.CustomGreenLight)
            .clipShape(RoundedRectangle(cornerRadius: 10.0))
            NavigationLink("Low Calorie"){
                LowCalorieView()
            }
            .frame(width: 230, height: 40)
            .font(.system(size: 20))
            .foregroundColor(.white)
            .bold()
            .background(Color.CustomGreenLight)
            .clipShape(RoundedRectangle(cornerRadius: 10.0))
        }
    }
}
