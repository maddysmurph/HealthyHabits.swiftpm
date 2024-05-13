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
        NavigationLink("Home") {
            HomeView()
        }
        .frame(width: 150, height: 40)
        .font(.system(size: 20))
        .bold()
        .foregroundColor(.white)
        .background(Color.CustomYellowDark)
        .clipShape(RoundedRectangle(cornerRadius: 10.0))
    }
               
}
