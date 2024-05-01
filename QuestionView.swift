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
    @AppStorage("Height") var height: Int = 0
    
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
                
                HStack(alignment: .center){
                    VStack(alignment: .trailing, spacing: 30) {
                        Text("Name: ")
                        Text("Age: ")
                        Text("Sex: ")
                        Text("Weight (lbs): ")
                        Text("Height: ")
                    }
                    .font(.system(size: 20))
                    
                    VStack(alignment: .leading, spacing: 20){
                        TextField("Not Set", text: $name)
                        TextField("Not Set", value: $age, format: .number)
                        TextField("Not Set", text: $sex)
                        TextField("Not Set", value: $weight, format: .number)
                        TextField("Not Set", value: $height, format: .number)
                    }
                    .font(.system(size: 20))
                    .textFieldStyle(.roundedBorder)
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

