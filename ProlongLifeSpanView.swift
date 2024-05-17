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
                .font(.system(size: 20))
                .foregroundColor(.black)
                .padding([.leading])
            Text("Prolonging your Lifespan")
                .font(.system(size: 40))
                .foregroundColor(.CustomPinkDark)
                .bold()
                .padding([.leading])
            Divider()
            VStack{
                HStack {
                    Text("Walking")
                        .frame(width: 200, height: 40)
                        .font(.system(size: 20))
                        .bold()
                        .foregroundColor(.white)
                        .background(Color.CustomPinkLight)
                        .clipShape(RoundedRectangle(cornerRadius: 10.0))
                    Text("Yoga")
                        .frame(width: 200, height: 40)
                        .font(.system(size: 20))
                        .bold()
                        .foregroundColor(.white)
                        .background(Color.CustomPinkLight)
                        .clipShape(RoundedRectangle(cornerRadius: 10.0))
                }
                HStack {
                    Text("Tennis")
                        .frame(width: 200, height: 40)
                        .font(.system(size: 20))
                        .bold()
                        .foregroundColor(.white)
                        .background(Color.CustomPinkLight)
                        .clipShape(RoundedRectangle(cornerRadius: 10.0))
                    Text("Badminton")
                        .frame(width: 200, height: 40)
                        .font(.system(size: 20))
                        .bold()
                        .foregroundColor(.white)
                        .background(Color.CustomPinkLight)
                        .clipShape(RoundedRectangle(cornerRadius: 10.0))
                }
                
                HStack {
                    Text("Soccer")
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
}
