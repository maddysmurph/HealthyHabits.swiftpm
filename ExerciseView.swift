//
//  ExerciseView.swift
//  HealthyHabits
//
//  Created by Nicole Park on 5/15/24.
//

import SwiftUI

struct ExerciseView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Exercises")
                .font(.system(size: 35))
                .foregroundColor(.CustomPinkDark)
                .bold()
            Text("Choose exercise preference below:")
                .font(.system(size: 20))
                .foregroundColor(.black)
        }
        Divider()
        VStack(alignment: .center, spacing: 15) {
            NavigationLink("Weight Loss"){
                WeightLossView()
            }
            .frame(width: 300, height: 40)
            .font(.system(size: 20))
            .foregroundColor(.white)
            .bold()
            .background(Color.CustomPinkLight)
            .clipShape(RoundedRectangle(cornerRadius: 10.0))
            NavigationLink("Weight Gain"){
                WeightGainView()
            }
            .frame(width: 300, height: 40)
            .font(.system(size: 20))
            .foregroundColor(.white)
            .bold()
            .background(Color.CustomPinkLight)
            .clipShape(RoundedRectangle(cornerRadius: 10.0))
            NavigationLink("Prolong Lifespan"){
                ProlongLifeSpanView()
            }
            .frame(width: 300, height: 40)
            .font(.system(size: 20))
            .foregroundColor(.white)
            .bold()
            .background(Color.CustomPinkLight)
            .clipShape(RoundedRectangle(cornerRadius: 10.0))
            NavigationLink("Increase Energy"){
                IncreaseEnergyView()
            }
            .frame(width: 300, height: 40)
            .font(.system(size: 20))
            .foregroundColor(.white)
            .bold()
            .background(Color.CustomPinkLight)
            .clipShape(RoundedRectangle(cornerRadius: 10.0))
            NavigationLink("Improve Posture"){
                ImprovePostureView()
            }
            .frame(width: 300, height: 40)
            .font(.system(size: 20))
            .bold()
            .foregroundColor(.white)
            .background(Color.CustomPinkLight)
            .clipShape(RoundedRectangle(cornerRadius: 10.0))
            NavigationLink("Increase Stamina"){
                IncreaseStaminaView()
            }
            .frame(width: 300, height: 40)
            .font(.system(size: 20))
            .bold()
            .foregroundColor(.white)
            .background(Color.CustomPinkLight)
            .clipShape(RoundedRectangle(cornerRadius: 10.0))
        }
    }
}
