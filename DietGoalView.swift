//
//  DietGoalView.swift
//  HealthyHabits
//
//  Created by Neha Darji on 4/25/24.
//

import SwiftUI

struct DietGoal: Identifiable {
    let id = UUID()
    let diets: String
}

struct DietGoalView: View {
    @State private var multiSelection = Set<UUID>()
    let dietGoals = [
        DietGoal(diets: "Vegetarian"),
        DietGoal(diets: "Vegan"),
        DietGoal(diets: "Keto"),
        DietGoal(diets: "Balanced"), 
        DietGoal(diets: "Calorie Control"),
        DietGoal(diets: "Hydrated"),
        DietGoal(diets: "Nutritious"),
        DietGoal(diets: "Cutting Sugar")]
    var body: some View {
        VStack {
            List(dietGoals, selection: $multiSelection) { dietGoal in
                Text(dietGoal.diets)
            }
            Text("\(multiSelection.count) selections")
            
                .navigationTitle("Diet Goals")
                .toolbar {
                    EditButton()
                }
            NavigationLink("Continue") {
                FitnessGoalView()
            }
            .frame(width: 150, height: 35)
            .font(.system(size: 20))
            .bold()
            .foregroundColor(.white)
            .background(Color.CustomYellowDark)
            .clipShape(RoundedRectangle(cornerRadius: 10.0))
        }
        
    }
}

