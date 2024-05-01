//
//  PhysicalActivityView.swift
//  HealthyHabits
//
//  Created by Nicole Park on 4/23/24.
//

import Foundation
import SwiftUI

struct PhysicalActivityView: View {
    @AppStorage ("PhysicalActivity") var physicalactivity: Bool = false
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
        }
        Text("How frequent are you physically active?")
            .font(.system(size: 20))
            .foregroundColor(.black)
        VStack(alignment: .center, spacing: 13) {
            Button("0 times a week"){
                physicalactivity = false
            }
            .frame(width: 300, height: 40)
            .font(.system(size: 20))
            .foregroundColor(.white)
            .background(Color.CustomYellowLight)
            .clipShape(RoundedRectangle(cornerRadius: 10.0))
            Button("1-2 times a week"){
                physicalactivity = false
            }
            .frame(width: 300, height: 40)
            .font(.system(size: 20))
            .foregroundColor(.white)
            .background(Color.CustomYellowLight)
            .clipShape(RoundedRectangle(cornerRadius: 10.0))
            Button("3-4 times a week"){
                physicalactivity = false
            }
            .frame(width: 300, height: 40)
            .font(.system(size: 20))
            .foregroundColor(.white)
            .background(Color.CustomYellowLight)
            .clipShape(RoundedRectangle(cornerRadius: 10.0))
            Button("5+ times a week"){
                physicalactivity = false
            }
            .frame(width: 300, height: 40)
            .font(.system(size: 20))
            .foregroundColor(.white)
            .background(Color.CustomYellowLight)
            .clipShape(RoundedRectangle(cornerRadius: 10.0))
            VStack(alignment: .center, spacing: 25) {
                NavigationLink("Continue"){
                    PreferredTypeOfExercise()
                    
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
}
