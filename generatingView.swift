//
//  generatingView.swift
//  HealthyHabits
//
//  Created by Nicole Park on 4/26/24.
//

import Foundation
import SwiftUI

struct generatingView: View {
    @AppStorage("Name") var name: String = ""
    @AppStorage("Age") var age: Int = 0
    @AppStorage("Sex") var sex: String = ""
    @AppStorage("Weight") var weight: Int = 0
    @AppStorage("Height") var height: Int = 0
    @AppStorage ("Health Problem") var specificHealthCondition = ""
    
    var body: some View {
        VStack {
            Text("Generating Your")
                .font(.system(size: 40))
                .foregroundColor(.black)
            Text("Health Plan")
                .font(.system(size: 45))
                .bold()
                .foregroundColor(.CustomYellowDark)
        }
        HStack(alignment: .center, spacing: 30) {
            Image(systemName: "fork.knife")
                .resizable()
                .frame(width: 35, height: 70)
            
            Image(systemName: "figure.run")
                .resizable()
                .frame(width: 45, height: 60)
            Image(systemName: "clock.fill")
                .resizable()
                .frame(width: 50, height: 50)
        }
        Text("Confirm the following information:")
            .font(.system(size: 30))
            .bold()
            .foregroundColor(.CustomYellowDark)
        Text("If information is incorrect or missing please select the back button as needed to edit previous question responses")
            .font(.system(size: 15))
            .bold()
            .foregroundColor(.CustomYellowLight)
        VStack(alignment: .leading){
            Text("Name: \(name)")
            Text("Age: \(age)")
            Text("Sex: \(sex)")
            Text("Weight: \(weight)")
            Text("Height: \(height)")
            Text("Health Condition: \(specificHealthCondition)")
        }
    }
               
}
