//
//  QuestionView.swift
//  HealthyHabits
//
//  Created by Neha Darji on 4/19/24.
//

import SwiftUI

struct QuestionView: View {
    
    @AppStorage("Name") var name: String = ""
    @AppStorage("Age") var age: Int = 0
    @AppStorage("Sex") var sex: String = ""
    @AppStorage("Weight") var weight: Int = 0
    @AppStorage("Height") var height: String = ""
    
    var body: some View {
        NavigationView {
            VStack{
                
                Text("Personalize")
                    .font(.system(size: 30))
                    .bold()
                    .foregroundColor(.CustomYellowDark)
                
                Text("your health plan")
                    .font(.system(size: 30))
                    .bold()
                    .foregroundColor(.CustomYellowLight)
                Divider()
                    .padding()
                
                HStack{
                    VStack(alignment: .trailing, spacing: 30, content: {
                        Text("Name: ")
                        Text("Age: ")
                        Text("Sex: ")
                        Text("Weight (lbs): ")
                        Text("Height: ")
                    })
                    
                    VStack(alignment: .leading, spacing: 30, content: {
                        TextField("Not Set", text: $name)
                        TextField("Not Set", value: $age, format: .number)
                        TextField("Not Set", text: $sex)
                        TextField("Not Set", value: $weight, format: .number)
                        TextField("Not Set", text: $height)
                    })
                }
                
                NavigationLink("Continue"){
                    HealthConditionView()
                        
                       
                    
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
}

