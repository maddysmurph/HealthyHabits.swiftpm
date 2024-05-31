//
//  ListView.swift
//  HealthyHabits
//
//  Created by Neha Darji on 5/28/24.
//

import SwiftUI

struct HeaderView: View {
    @State var newExercise: String = ""
    @State var newCalorieBurned: Int?
    @Binding var exercises: [ExerciseTracking]
    var body: some View {
        HStack{
            TextField("Calories Burned", value: $newCalorieBurned, format: .number)
                .textFieldStyle(.roundedBorder)
            TextField("Exercise Type", text: $newExercise)
                .textFieldStyle(.roundedBorder)
            Button("+") {
                guard let number = newCalorieBurned else {return}
                let newExerciseTracking = ExerciseTracking(name: newExercise, calorieBurned: number)
                exercises.append(newExerciseTracking)
                
                newExercise = ""
                newCalorieBurned = nil
            }
            .bold()
            .font(.largeTitle)
        }
        .padding()
    }
}

struct ExerciseTracking: Hashable{
    var name: String
    var calorieBurned: Int
}

