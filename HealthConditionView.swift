//
//  HealthConditionView.swift
//  HealthyHabits
//
//  Created by Maddy Murphy on 4/19/24.
//

import SwiftUI

struct HealthConditionView: View {
    @State var healthCondition = false
    var body: some View {
        
        Text("Personalize")
            .font(.system(size: 30))
            .bold()
            .foregroundColor(.CustomYellowDark)
        
        Text("your health plan")
            .font(.system(size: 30))
            .bold()
            .foregroundColor(.CustomYellowLight)
        
        Text("Do you have a health condition?")
            .font(.system(size: 20))
            .foregroundColor(.CustomYellowLight)
        
        Button("Yes"){
            healthCondition = true
        }
        .font(.system(size: 20))
        .foregroundColor(.CustomYellowLight)
        .frame(width: 100, height: 100)
       
        
        Button("No"){
            healthCondition = false
        }
    }
}


