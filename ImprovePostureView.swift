//
//  ImprovePostureView.swift
//  HealthyHabits
//
//  Created by Nicole Park on 5/15/24.
//

import SwiftUI

struct ImprovePostureView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Exercises recommended for")
                .font(.system(size: 30))
                .foregroundColor(.black)
                .padding([.leading])
            Text("Improving your Posture")
                .font(.system(size: 50))
                .foregroundColor(.CustomPinkDark)
                .bold()
                .padding([.leading])
            Divider()
            VStack{
                HStack {
                    Text("Plank")
                        .frame(width: 200, height: 40)
                        .font(.system(size: 20))
                        .bold()
                        .foregroundColor(.white)
                        .background(Color.CustomPinkLight)
                        .clipShape(RoundedRectangle(cornerRadius: 10.0))
                    Text("Cat Cow Stretches")
                        .frame(width: 200, height: 40)
                        .font(.system(size: 20))
                        .bold()
                        .foregroundColor(.white)
                        .background(Color.CustomPinkLight)
                        .clipShape(RoundedRectangle(cornerRadius: 10.0))
                }
                HStack {
                    Text("Downward Dog Pose")
                        .frame(width: 200, height: 40)
                        .font(.system(size: 20))
                        .bold()
                        .foregroundColor(.white)
                        .background(Color.CustomPinkLight)
                        .clipShape(RoundedRectangle(cornerRadius: 10.0))
                    Text("Bird Dog Exercise")
                        .frame(width: 200, height: 40)
                        .font(.system(size: 20))
                        .bold()
                        .foregroundColor(.white)
                        .background(Color.CustomPinkLight)
                        .clipShape(RoundedRectangle(cornerRadius: 10.0))
                }
                
                HStack {
                    Text("Bridge")
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
