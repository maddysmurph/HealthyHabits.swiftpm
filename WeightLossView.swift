//
//  WeightLossView.swift
//  HealthyHabits
//
//  Created by Nicole Park on 5/15/24.
//

import SwiftUI

struct WeightLossView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Exercises recommended for")
                .font(.system(size: 30))
                .foregroundColor(.black)
                .padding([.leading])
            Text("Weight Loss")
                .font(.system(size: 50))
                .foregroundColor(.CustomPinkDark)
                .bold()
                .padding([.leading])
        }
        Divider()
        VStack{
            HStack(alignment: .center, spacing: 20){
                Text("Running")
                    .frame(width: 300, height: 40)
                    .font(.system(size: 20))
                    .bold()
                    .foregroundColor(.white)
                    .background(Color.CustomYellowDark)
                    .clipShape(RoundedRectangle(cornerRadius: 10.0))
                Text("Biking")
                    .frame(width: 300, height: 40)
                    .font(.system(size: 20))
                    .bold()
                    .foregroundColor(.white)
                    .background(Color.CustomYellowDark)
                    .clipShape(RoundedRectangle(cornerRadius: 10.0))
                Text("Burpees")
                    .frame(width: 300, height: 40)
                    .font(.system(size: 20))
                    .bold()
                    .foregroundColor(.white)
                    .background(Color.CustomYellowDark)
                    .clipShape(RoundedRectangle(cornerRadius: 10.0))
                Text("Swimming")
                    .frame(width: 300, height: 40)
                    .font(.system(size: 20))
                    .bold()
                    .foregroundColor(.white)
                    .background(Color.CustomYellowDark)
                    .clipShape(RoundedRectangle(cornerRadius: 10.0))
                Text("Jumping Jacks")
                    .frame(width: 300, height: 40)
                    .font(.system(size: 20))
                    .bold()
                    .foregroundColor(.white)
                    .background(Color.CustomYellowDark)
                    .clipShape(RoundedRectangle(cornerRadius: 10.0))
            }
        }
    }
}
