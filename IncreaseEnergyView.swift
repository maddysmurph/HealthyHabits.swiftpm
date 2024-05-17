//
//  IncreaseEnergyView.swift
//  HealthyHabits
//
//  Created by Nicole Park on 5/15/24.
//

import SwiftUI

struct IncreaseEnergyView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Exercises recommended for")
                .font(.system(size: 30))
                .foregroundColor(.black)
                .padding([.leading])
            Text("Increased Energy")
                .font(.system(size: 50))
                .foregroundColor(.CustomPinkDark)
                .bold()
                .padding([.leading])
        }
        Divider()
        VStack{
            HStack {
                Text("Biking")
                    .frame(width: 200, height: 40)
                    .font(.system(size: 20))
                    .bold()
                    .foregroundColor(.white)
                    .background(Color.CustomPinkLight)
                    .clipShape(RoundedRectangle(cornerRadius: 10.0))
                Text("Walking")
                    .frame(width: 200, height: 40)
                    .font(.system(size: 20))
                    .bold()
                    .foregroundColor(.white)
                    .background(Color.CustomPinkLight)
                    .clipShape(RoundedRectangle(cornerRadius: 10.0))
            }
            HStack {
                Text("Mountain Climbers")
                    .frame(width: 200, height: 40)
                    .font(.system(size: 20))
                    .bold()
                    .foregroundColor(.white)
                    .background(Color.CustomPinkLight)
                    .clipShape(RoundedRectangle(cornerRadius: 10.0))
                Text("Dance")
                    .frame(width: 200, height: 40)
                    .font(.system(size: 20))
                    .bold()
                    .foregroundColor(.white)
                    .background(Color.CustomPinkLight)
                    .clipShape(RoundedRectangle(cornerRadius: 10.0))
            }
            
            HStack {
                Text("Upward Dog Stretch")
                    .frame(width: 200, height: 40)
                    .font(.system(size: 20))
                    .bold()
                    .foregroundColor(.white)
                    .background(Color.CustomPinkLight)
                    .clipShape(RoundedRectangle(cornerRadius: 10.0))
            }
        }
    }
}
