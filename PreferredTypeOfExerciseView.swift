//
//  PreferredTypeOfExerciseView.swift
//  HealthyHabits
//
//  Created by Nicole Park on 4/25/24.
//

import Foundation
import SwiftUI

struct PreferredTypeOfExercise: View {
    @State var preferredexercisetype = false
    var body: some View {
        Text("Select preferred type of exercise.")
        VStack {
            Button("Aerobic") {
                preferredexercisetype = false
            }
            .frame(width: 150, height: 35)
            .font(.system(size: 20))
            .bold()
            .foregroundColor(.white)
            .background(Color.CustomYellowLight)
            .clipShape(RoundedRectangle(cornerRadius: 10.0))
            Button("Anaerobic") {
                preferredexercisetype = true
            }
            .frame(width: 150, height: 35)
            .font(.system(size: 20))
            .bold()
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
