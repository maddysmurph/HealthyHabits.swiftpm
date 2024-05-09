//
//  FitnessGoalView.swift
//  HealthyHabits
//
//  Created by Neha Darji on 4/29/24.
//

import SwiftUI

struct FitnessGoalView: View {
    @AppStorage ("FitnessGoal") var fitnessGoal: Bool = false
    @State var backgroundColor1 = Color.CustomYellowLight
    @State var backgroundColor2 = Color.CustomYellowLight
    @State var backgroundColor3 = Color.CustomYellowLight
    @State var backgroundColor4 = Color.CustomYellowLight
    @State var backgroundColor5 = Color.CustomYellowLight
    @State var backgroundColor6 = Color.CustomYellowLight
    @State var backgroundColor7 = Color.CustomYellowLight
    @State var backgroundColor8 = Color.CustomYellowLight
    
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
                Text("Select your diet goal")
                    .font(.system(size: 20))
                    .foregroundColor(.black)
                HStack{
                    Button("Weight Loss") {
                        fitnessGoal = false
                        backgroundColor1 = Color.CustomYellowDark
                        backgroundColor2 = Color.CustomYellowLight
                        backgroundColor3 = Color.CustomYellowLight
                        backgroundColor4 = Color.CustomYellowLight
                        backgroundColor5 = Color.CustomYellowLight
                        backgroundColor6 = Color.CustomYellowLight
                        backgroundColor7 = Color.CustomYellowLight
                        backgroundColor8 = Color.CustomYellowLight
                    }
                    .frame(width: 150, height: 50)
                    .font(.system(size: 20))
                    .foregroundColor(.white)
                    .background(backgroundColor1)
                    .clipShape(RoundedRectangle(cornerRadius: 10.0))
                    
                    Button("Weight Gain") {
                        fitnessGoal = false
                        backgroundColor1 = Color.CustomYellowLight
                        backgroundColor2 = Color.CustomYellowDark
                        backgroundColor3 = Color.CustomYellowLight
                        backgroundColor4 = Color.CustomYellowLight
                        backgroundColor5 = Color.CustomYellowLight
                        backgroundColor6 = Color.CustomYellowLight
                        backgroundColor7 = Color.CustomYellowLight
                        backgroundColor8 = Color.CustomYellowLight
                    }
                    .frame(width: 150, height: 50)
                    .font(.system(size: 20))
                    .foregroundColor(.white)
                    .background(backgroundColor2)
                    .clipShape(RoundedRectangle(cornerRadius: 10.0))
                }
                
                HStack{
                    Button("Increase Stamina") {
                        fitnessGoal = false
                        backgroundColor1 = Color.CustomYellowLight
                        backgroundColor2 = Color.CustomYellowLight
                        backgroundColor3 = Color.CustomYellowDark
                        backgroundColor4 = Color.CustomYellowLight
                        backgroundColor5 = Color.CustomYellowLight
                        backgroundColor6 = Color.CustomYellowLight
                        backgroundColor7 = Color.CustomYellowLight
                        backgroundColor8 = Color.CustomYellowLight
                    }
                    .frame(width: 150, height: 50)
                    .font(.system(size: 20))
                    .foregroundColor(.white)
                    .background(backgroundColor3)
                    .clipShape(RoundedRectangle(cornerRadius: 10.0))
                    
                    Button("Muscle Gain") {
                        fitnessGoal = false
                        backgroundColor1 = Color.CustomYellowLight
                        backgroundColor2 = Color.CustomYellowLight
                        backgroundColor3 = Color.CustomYellowLight
                        backgroundColor4 = Color.CustomYellowDark
                        backgroundColor5 = Color.CustomYellowLight
                        backgroundColor6 = Color.CustomYellowLight
                        backgroundColor7 = Color.CustomYellowLight
                        backgroundColor8 = Color.CustomYellowLight
                    }
                    .frame(width: 150, height: 50)
                    .font(.system(size: 20))
                    .foregroundColor(.white)
                    .background(backgroundColor4)
                    .clipShape(RoundedRectangle(cornerRadius: 10.0))
                }
                
                HStack{
                    Button("Prolong Lifespan") {
                        fitnessGoal = false
                        backgroundColor1 = Color.CustomYellowLight
                        backgroundColor2 = Color.CustomYellowLight
                        backgroundColor3 = Color.CustomYellowLight
                        backgroundColor4 = Color.CustomYellowLight
                        backgroundColor5 = Color.CustomYellowDark
                        backgroundColor6 = Color.CustomYellowLight
                        backgroundColor7 = Color.CustomYellowLight
                        backgroundColor8 = Color.CustomYellowLight
                    }
                    .frame(width: 150, height: 50)
                    .font(.system(size: 20))
                    .foregroundColor(.white)
                    .background(backgroundColor5)
                    .clipShape(RoundedRectangle(cornerRadius: 10.0))
                    
                    Button("Reduce Risk of Injury") {
                        fitnessGoal = false
                        backgroundColor1 = Color.CustomYellowLight
                        backgroundColor2 = Color.CustomYellowLight
                        backgroundColor3 = Color.CustomYellowLight
                        backgroundColor4 = Color.CustomYellowLight
                        backgroundColor5 = Color.CustomYellowLight
                        backgroundColor6 = Color.CustomYellowDark
                        backgroundColor7 = Color.CustomYellowLight
                        backgroundColor8 = Color.CustomYellowLight
                    }
                    .frame(width: 150, height: 50)
                    .font(.system(size: 20))
                    .foregroundColor(.white)
                    .background(backgroundColor6)
                    .clipShape(RoundedRectangle(cornerRadius: 10.0))
                }
                
                HStack{
                    Button("Increase Energy") {
                        fitnessGoal = false
                        backgroundColor1 = Color.CustomYellowLight
                        backgroundColor2 = Color.CustomYellowLight
                        backgroundColor3 = Color.CustomYellowLight
                        backgroundColor4 = Color.CustomYellowLight
                        backgroundColor5 = Color.CustomYellowLight
                        backgroundColor6 = Color.CustomYellowLight
                        backgroundColor7 = Color.CustomYellowDark
                        backgroundColor8 = Color.CustomYellowLight
                    }
                    .frame(width: 150, height: 50)
                    .font(.system(size: 20))
                    .foregroundColor(.white)
                    .background(backgroundColor7)
                    .clipShape(RoundedRectangle(cornerRadius: 10.0))
                    
                    Button("Improve Posture") {
                        fitnessGoal = false
                        backgroundColor1 = Color.CustomYellowLight
                        backgroundColor2 = Color.CustomYellowLight
                        backgroundColor3 = Color.CustomYellowLight
                        backgroundColor4 = Color.CustomYellowLight
                        backgroundColor5 = Color.CustomYellowLight
                        backgroundColor6 = Color.CustomYellowLight
                        backgroundColor7 = Color.CustomYellowLight
                        backgroundColor8 = Color.CustomYellowDark
                    }
                    .frame(width: 150, height: 50)
                    .font(.system(size: 20))
                    .foregroundColor(.white)
                    .background(backgroundColor8)
                    .clipShape(RoundedRectangle(cornerRadius: 10.0))
                }
                NavigationLink("Continue") {
                    WeightView()
                }
                .frame(width: 150, height: 35)
                .font(.system(size: 20))
                .bold()
                .foregroundColor(.white)
                .background(Color.CustomYellowDark)
                .clipShape(RoundedRectangle(cornerRadius: 10.0))
            }
        }
    }
