//
//  HealthConditionView.swift
//  HealthyHabits
//
//  Created by Maddy Murphy on 4/19/24.
//

import SwiftUI

struct HealthConditionView: View {
    @AppStorage ("Health Condition") var healthCondition = false
    @State var backgroundColor1 = Color.CustomYellowLight
    @State var backgroundColor2 = Color.CustomYellowLight
    var body: some View {
            VStack{
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
                
                Text("Do you have a health condition?")
                    .font(.system(size: 20))
                    .foregroundColor(.black)
                
                Button("Yes"){
                    healthCondition = true
                    backgroundColor1 = Color.CustomYellowDark
                    backgroundColor2 = Color.CustomYellowLight
                }
                .frame(width: 150, height: 35)
                .font(.system(size: 20))
                .foregroundColor(.white)
                .background(backgroundColor1)
                .clipShape(RoundedRectangle(cornerRadius: 10.0))
                
                
                Button("No"){
                    healthCondition = false
                    backgroundColor2 = Color.CustomYellowDark
                    backgroundColor1 = Color.CustomYellowLight
                }
                .frame(width: 150, height: 35)
                .font(.system(size: 20))
                .foregroundColor(.white)
                .background(backgroundColor2)
                .clipShape(RoundedRectangle(cornerRadius: 10.0))
                

                
                NavigationLink("Continue"){
                    MedicationView()

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

