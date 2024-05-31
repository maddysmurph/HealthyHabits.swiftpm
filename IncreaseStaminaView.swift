//
//  IncreaseStaminaView.swift
//  HealthyHabits
//
//  Created by Nicole Park on 5/31/24.
//

import SwiftUI

struct IncreaseStaminaView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Exercises recommended for")
                .font(.system(size: 20))
                .foregroundColor(.black)
                .padding([.leading])
            Text("Increased Stamina")
                .font(.system(size: 40))
                .foregroundColor(.CustomPinkDark)
                .bold()
                .padding([.leading])
        }
        Divider()
        VStack{
            HStack {
                Text("Running")
                    .frame(width: 150, height: 40)
                    .font(.system(size: 20))
                    .bold()
                    .foregroundColor(.white)
                    .background(Color.CustomPinkLight)
                    .clipShape(RoundedRectangle(cornerRadius: 10.0))
                Text("Biking")
                    .frame(width: 150, height: 40)
                    .font(.system(size: 20))
                    .bold()
                    .foregroundColor(.white)
                    .background(Color.CustomPinkLight)
                    .clipShape(RoundedRectangle(cornerRadius: 10.0))
            }
            HStack {
                Text("Jumping Roping")
                    .frame(width: 150, height: 40)
                    .font(.system(size: 20))
                    .bold()
                    .foregroundColor(.white)
                    .background(Color.CustomPinkLight)
                    .clipShape(RoundedRectangle(cornerRadius: 10.0))
                Text("Dance")
                    .frame(width: 150, height: 40)
                    .font(.system(size: 20))
                    .bold()
                    .foregroundColor(.white)
                    .background(Color.CustomPinkLight)
                    .clipShape(RoundedRectangle(cornerRadius: 10.0))
            }
            
            HStack {
                Text("Badminton")
                    .frame(width: 150, height: 40)
                    .font(.system(size: 20))
                    .bold()
                    .foregroundColor(.white)
                    .background(Color.CustomPinkLight)
                    .clipShape(RoundedRectangle(cornerRadius: 10.0))
            }
        }
    }
}

