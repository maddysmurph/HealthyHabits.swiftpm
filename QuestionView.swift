//
//  QuestionView.swift
//  HealthyHabits
//
//  Created by Neha Darji on 4/19/24.
//

import SwiftUI

struct QuestionView: View {
    
    @State var name = ""
    @State var age = 0
    @State var sex = ""
    @State var weight = 0
    @State var height = ""
    
    var body: some View {
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
    }
}
