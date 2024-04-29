//
//  HomeView.swift
//  HealthyHabits
//
//  Created by Nicole Park on 4/29/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Hello")
                    .font(.system(size: 40))
                    .foregroundColor(.black)
                    .bold()
                    .padding([.leading])
            }
            Text("Health Plan made just for you.")
                .font(.system(size: 15))
                .foregroundColor(.black)
                .padding([.leading])
            Divider()
            RoundedRectangle(cornerRadius: 65)
                .size(width: 200, height: 265)
                .foregroundColor(.CustomGreenLight)
                .padding([.leading])
        
        }
        RoundedRectangle(cornerRadius: 65)
            .size(width: 360, height: 200)
            .foregroundColor(.CustomPinkLight)
            .padding([.leading])
    }
}
extension Color {
    static let CustomGreenLight = Color (red: 201/255, green: 238/255, blue: 145/255)
}
extension Color {
    static let CustomPinkLight = Color (red: 255/255, green: 224/255, blue: 233/255)
}
