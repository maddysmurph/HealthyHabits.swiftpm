//
//  WeightView.swift
//  HealthyHabits
//
//  Created by Nicole Park on 4/26/24.
//

import Foundation
import SwiftUI

struct WeightView: View {
    @State var weight = false
    var body: some View {
        Text("Personalize")
            .font(.system(size: 45))
            .bold()
            .foregroundColor(.CustomYellowDark)
        
        Text("your health plan")
            .font(.system(size: 42))
            .bold()
            .foregroundColor(.black)
        Divider()
            .padding()
        Text("How much weight do you hope to lose?")
            .font(.system(size: 20))
            .foregroundColor(.black)
        VStack {
            Button("<5 lbs") {
                weight = false
            }
            .frame(width: 150, height: 35)
            .font(.system(size: 20))
            .foregroundColor(.white)
            .background(Color.CustomYellowLight)
            .clipShape(RoundedRectangle(cornerRadius: 10.0))
            Button("5-10 lbs") {
                weight = false
            }
            .frame(width: 150, height: 35)
            .font(.system(size: 20))
            .foregroundColor(.white)
            .background(Color.CustomYellowLight)
            .clipShape(RoundedRectangle(cornerRadius: 10.0))
            Button("11-16 lbs") {
                weight = false
            }
            .frame(width: 150, height: 35)
            .font(.system(size: 20))
            .foregroundColor(.white)
            .background(Color.CustomYellowLight)
            .clipShape(RoundedRectangle(cornerRadius: 10.0))
            Button("17-22 lbs") {
                weight = false
            }
            .frame(width: 150, height: 35)
            .font(.system(size: 20))
            .foregroundColor(.white)
            .background(Color.CustomYellowLight)
            .clipShape(RoundedRectangle(cornerRadius: 10.0))
            Button("23+ lbs") {
                weight = false
            }
            .frame(width: 150, height: 35)
            .font(.system(size: 20))
            .foregroundColor(.white)
            .background(Color.CustomYellowLight)
            .clipShape(RoundedRectangle(cornerRadius: 10.0))
            NavigationLink("Continue"){
                generatingView()

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
