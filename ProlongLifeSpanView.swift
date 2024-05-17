//
//  ProlongLifeSpanView.swift
//  HealthyHabits
//
//  Created by Nicole Park on 5/15/24.
//

import SwiftUI

struct ProlongLifeSpanView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Exercises recommended for")
                .font(.system(size: 30))
                .foregroundColor(.black)
                .padding([.leading])
            Text("Prolonging your Lifespan")
                .font(.system(size: 50))
                .foregroundColor(.CustomPinkDark)
                .bold()
                .padding([.leading])
        }
    }
}

