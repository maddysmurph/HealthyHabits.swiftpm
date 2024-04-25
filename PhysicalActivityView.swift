//
//  PhysicalActivityView.swift
//  HealthyHabits
//
//  Created by Nicole Park on 4/23/24.
//

import Foundation
import SwiftUI

struct PhysicalActivityView: View {
    @State var physicalactivity = false
    var body: some View {
        Text("How frequent are you physically active?")
        VStack {
            Button("0 times a week"){
                physicalactivity = false
            }
            .frame(width: 300, height: 40)
            .font(.system(size: 20))
            .bold()
            .foregroundColor(.white)
            .background(Color.CustomYellowLight)
            .clipShape(RoundedRectangle(cornerRadius: 10.0))
            Button("1-2 times a week"){
                physicalactivity = false
            }
            .frame(width: 300, height: 40)
            .font(.system(size: 20))
            .bold()
            .foregroundColor(.white)
            .background(Color.CustomYellowLight)
            .clipShape(RoundedRectangle(cornerRadius: 10.0))
            Button("3-4 times a week"){
                physicalactivity = false
            }
            .frame(width: 300, height: 40)
            .font(.system(size: 20))
            .bold()
            .foregroundColor(.white)
            .background(Color.CustomYellowLight)
            .clipShape(RoundedRectangle(cornerRadius: 10.0))
            Button("5+ times a week"){
                physicalactivity = false
            }
            .frame(width: 300, height: 40)
            .font(.system(size: 20))
            .bold()
            .foregroundColor(.white)
            .background(Color.CustomYellowLight)
            .clipShape(RoundedRectangle(cornerRadius: 10.0))
            NavigationLink("Continue"){
                PreferredTypeOfExercise()

            }
            .frame(width: 200, height: 40)
            .font(.system(size: 20))
            .bold()
            .foregroundColor(.white)
            .background(Color.CustomYellowDark)
            .clipShape(RoundedRectangle(cornerRadius: 10.0))
        }
    }
}
