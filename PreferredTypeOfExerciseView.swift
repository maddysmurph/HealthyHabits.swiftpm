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
    @State var backgroundColor1 = Color.CustomYellowLight
    @State var backgroundColor2 = Color.CustomYellowLight
    @State var currentDegree = 0.0
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
                backgroundColor1 = Color.CustomYellowDark
                backgroundColor2 = Color.CustomYellowLight
                withAnimation(Animation.easeIn){
                    currentDegree += 360.0
                }
            }
            .frame(width: 150, height: 35)
            .font(.system(size: 20))
            .foregroundColor(.white)
            .background(backgroundColor1)
            .clipShape(RoundedRectangle(cornerRadius: 10.0))
            .rotationEffect(.degrees(currentDegree))
            Button("Anaerobic") {
                preferredexercisetype = true
                backgroundColor2 = Color.CustomYellowDark
                backgroundColor1 = Color.CustomYellowLight
                withAnimation(Animation.easeIn){
                    currentDegree += 360.0
                }
            }
            .frame(width: 150, height: 35)
            .font(.system(size: 20))
            .foregroundColor(.white)
            .background(backgroundColor2)
            .clipShape(RoundedRectangle(cornerRadius: 10.0))
            .rotationEffect(.degrees(currentDegree))
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
