//
//  PreferredTypeOfExerciseView.swift
//  HealthyHabits
//
//  Created by Nicole Park on 4/25/24.
//

import Foundation
import SwiftUI

struct PreferredTypeOfExercise: View {
    @AppStorage ("PreferredExerciseType") var preferredexercisetype: Bool = false
    var body: some View {
        VStack {
            Text("Personalize")
                .font(.system(size: 45))
                .bold()
                .foregroundColor(.CustomYellowDark)
            
            Text("your health plan")
                .font(.system(size: 42))
                .bold()
                .foregroundColor(.black)
            Divider()
                .padding()
            Text("Select preferred type of exercise.")
                .font(.system(size: 20))
                .foregroundColor(.black)

            Button("Aerobic") {
                preferredexercisetype = false
            }
            .frame(width: 150, height: 35)
            .font(.system(size: 20))
            .foregroundColor(.white)
            .background(Color.CustomYellowLight)
            .clipShape(RoundedRectangle(cornerRadius: 10.0))
            Button("Anaerobic") {
                preferredexercisetype = true
            }
            .frame(width: 150, height: 35)
            .font(.system(size: 20))
            .foregroundColor(.white)
            .background(Color.CustomYellowLight)
            .clipShape(RoundedRectangle(cornerRadius: 10.0))
            NavigationLink("Continue"){
                preferredSleepTime()

            }
            .frame(width: 200, height: 40)
            .font(.system(size: 20))
            .bold()
            .foregroundColor(.white)
            .background(Color.CustomYellowDark)
            .clipShape(RoundedRectangle(cornerRadius: 10.0))
        }
    }
}

#Preview {
    PreferredTypeOfExercise()
}
