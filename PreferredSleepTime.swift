//
//  PreferredSleepTime.swift
//  HealthyHabits
//
//  Created by Nicole Park on 4/25/24.
//

import SwiftUI

struct preferredSleepTime: View {
    @State private var currentDate = Date()
    var body: some View {
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
        
        Text("Select preferred sleep time.")
            .font(.system(size: 20))
            .foregroundColor(.black)
        DatePicker("", selection: $currentDate, displayedComponents: .hourAndMinute)
                    .labelsHidden()
        NavigationLink("Continue"){
            DietGoalView()

        }
        .frame(width: 200, height: 40)
        .font(.system(size: 20))
        .bold()
        .foregroundColor(.white)
        .background(Color.CustomYellowDark)
        .clipShape(RoundedRectangle(cornerRadius: 10.0))
    }
}
