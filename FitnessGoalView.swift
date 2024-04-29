//
//  FitnessGoalView.swift
//  HealthyHabits
//
//  Created by Neha Darji on 4/29/24.
//

import SwiftUI

struct FitnessGoal: Identifiable {
    let id = UUID()
    let mainGoal: String
}

struct FitnessGoalView: View {
    let fitnessGoals = [FitnessGoal(mainGoal: "Weight Loss"),
                        FitnessGoal(mainGoal: "Weight Gain"),
                        FitnessGoal(mainGoal: "Increase Stamina"),
                        FitnessGoal(mainGoal: "Muscle Gain"),
                        FitnessGoal(mainGoal: "Prolong Lifespan"),
                        FitnessGoal(mainGoal: "Reduce Risk of Injury"),
                        FitnessGoal(mainGoal: "Increase Energy"),
                        FitnessGoal(mainGoal: "Improve Posture")
    ]
    
    @State private var multiselection = Set<UUID>()
    
    var body: some View {
        NavigationView {
            VStack {
                List(fitnessGoals, selection: $multiselection) { fitnessGoal in
                    Text(fitnessGoal.mainGoal)
                }
                Text("\(multiselection.count) selections")
            }
            .navigationTitle("Fitness Goals")
            .toolbar {
                EditButton()
            }
            
            NavigationLink("Continue") {
                WeightView()
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

