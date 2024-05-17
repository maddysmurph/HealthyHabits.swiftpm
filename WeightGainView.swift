//
//  WeightGainView.swift
//  HealthyHabits
//
//  Created by Nicole Park on 5/15/24.
//

import SwiftUI

struct WeightGainView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Exercises recommended for")
                .font(.system(size: 30))
                .foregroundColor(.black)
                .padding([.leading])
            Text("Weight Gain")
                .font(.system(size: 50))
                .foregroundColor(.CustomPinkDark)
                .bold()
                .padding([.leading])
        }
        Divider()
        VStack{
            HStack(alignment: .center, spacing: 20){
                Text("Squats")
                    .frame(width: 300, height: 40)
                    .font(.system(size: 20))
                    .bold()
                    .foregroundColor(.white)
                    .background(Color.CustomYellowDark)
                    .clipShape(RoundedRectangle(cornerRadius: 10.0))
                Text("Push-ups")
                    .frame(width: 300, height: 40)
                    .font(.system(size: 20))
                    .bold()
                    .foregroundColor(.white)
                    .background(Color.CustomYellowDark)
                    .clipShape(RoundedRectangle(cornerRadius: 10.0))
                Text("Bench press")
                    .frame(width: 300, height: 40)
                    .font(.system(size: 20))
                    .bold()
                    .foregroundColor(.white)
                    .background(Color.CustomYellowDark)
                    .clipShape(RoundedRectangle(cornerRadius: 10.0))
                Text("Deadlift")
                    .frame(width: 300, height: 40)
                    .font(.system(size: 20))
                    .bold()
                    .foregroundColor(.white)
                    .background(Color.CustomYellowDark)
                    .clipShape(RoundedRectangle(cornerRadius: 10.0))
                Text("Lunges")
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
