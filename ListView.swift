//
//  ListView.swift
//  HealthyHabits
//
//  Created by Neha Darji on 5/28/24.
//

import SwiftUI

struct ListView: View {
    let currentexercise: ExerciseTracking
    var body: some View {
        VStack(alignment: .leading){
            Text(currentexercise.name)
                .font(.title)
                .bold()
            Text("Calories Burned: \(currentexercise.calorieBurned)")
                .font(.title3)
        }
    }
}

