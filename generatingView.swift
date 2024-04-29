//
//  generatingView.swift
//  HealthyHabits
//
//  Created by Nicole Park on 4/26/24.
//

import Foundation
import SwiftUI

struct generatingView: View {
    var body: some View {
        VStack {
            Text("Generate Your")
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
        NavigationLink("Go"){
            HomeView()

        }
        .frame(width: 100, height: 40)
        .font(.system(size: 20))
        .bold()
        .foregroundColor(.white)
        .background(Color.CustomYellowDark)
        .clipShape(RoundedRectangle(cornerRadius: 10.0))
    }
}