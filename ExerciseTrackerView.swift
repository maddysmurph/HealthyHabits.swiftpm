//
//  ExerciseTrackerView.swift
//  HealthyHabits
//
//  Created by Neha Darji on 5/28/24.
//

import SwiftUI

struct ExerciseTrackerView: View {
    @State var exercises: [ExerciseTracking] = []
    
    var body: some View {
        ListView(exercises: $exercises)
        List(exercises, id: \.self){ currentExercise in
            ListView(currentExercise: currentExercise)
        }
    }
}
