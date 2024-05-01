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
    @State var backgroundColor1 = Color.CustomYellowLight
    @State var backgroundColor2 = Color.CustomYellowLight
    @State var backgroundColor3 = Color.CustomYellowLight
    @State var backgroundColor4 = Color.CustomYellowLight
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
                backgroundColor1 = Color.CustomYellowDark
                backgroundColor2 = Color.CustomYellowLight
                backgroundColor3 = Color.CustomYellowLight
                backgroundColor4 = Color.CustomYellowLight
            }
            .frame(width: 300, height: 40)
            .font(.system(size: 20))
            .foregroundColor(.white)
            .background(backgroundColor1)
            .clipShape(RoundedRectangle(cornerRadius: 10.0))
            Button("1-2 times a week"){
                physicalactivity = false
                backgroundColor2 = Color.CustomYellowDark
                backgroundColor1 = Color.CustomYellowLight
                backgroundColor3 = Color.CustomYellowLight
                backgroundColor4 = Color.CustomYellowLight
            }
            .frame(width: 300, height: 40)
            .font(.system(size: 20))
            .foregroundColor(.white)
            .background(backgroundColor2)
            .clipShape(RoundedRectangle(cornerRadius: 10.0))
            Button("3-4 times a week"){
                physicalactivity = false
                backgroundColor3 = Color.CustomYellowDark
                backgroundColor2 = Color.CustomYellowLight
                backgroundColor1 = Color.CustomYellowLight
                backgroundColor4 = Color.CustomYellowLight
            }
            .frame(width: 300, height: 40)
            .font(.system(size: 20))
            .foregroundColor(.white)
            .background(backgroundColor3)
            .clipShape(RoundedRectangle(cornerRadius: 10.0))
            Button("5+ times a week"){
                physicalactivity = false
                backgroundColor4 = Color.CustomYellowDark
                backgroundColor2 = Color.CustomYellowLight
                backgroundColor3 = Color.CustomYellowLight
                backgroundColor1 = Color.CustomYellowLight
            }
            .frame(width: 300, height: 40)
            .font(.system(size: 20))
            .foregroundColor(.white)
            .background(backgroundColor4)
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
