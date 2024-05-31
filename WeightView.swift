//
//  WeightView.swift
//  HealthyHabits
//
//  Created by Nicole Park on 4/26/24.
//

import Foundation
import SwiftUI

struct WeightView: View {
    @AppStorage ("Weight") var weight: Bool = false
    @State var backgroundColor1 = Color.CustomYellowLight
    @State var backgroundColor2 = Color.CustomYellowLight
    @State var backgroundColor3 = Color.CustomYellowLight
    @State var backgroundColor4 = Color.CustomYellowLight
    @State var backgroundColor5 = Color.CustomYellowLight
    @State var currentDegree = 0.0
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
        VStack(alignment: .center, spacing: 13) {
            Button("<5 lbs") {
                weight = false
                backgroundColor1 = Color.CustomYellowDark
                backgroundColor2 = Color.CustomYellowLight
                backgroundColor3 = Color.CustomYellowLight
                backgroundColor4 = Color.CustomYellowLight
                backgroundColor5 = Color.CustomYellowLight
                withAnimation(Animation.easeIn){
                    currentDegree += 360.0
                }
            }
            .frame(width: 150, height: 35)
            .font(.system(size: 20))
            .foregroundColor(.white)
            .background(backgroundColor1)
            .clipShape(RoundedRectangle(cornerRadius: 10.0))
            .rotationEffect(.degrees(currentDegree))
            Button("5-10 lbs") {
                weight = false
                backgroundColor2 = Color.CustomYellowDark
                backgroundColor1 = Color.CustomYellowLight
                backgroundColor3 = Color.CustomYellowLight
                backgroundColor4 = Color.CustomYellowLight
                backgroundColor5 = Color.CustomYellowLight
                withAnimation(Animation.easeIn){
                    currentDegree += 360.0
                }
            }
            .frame(width: 150, height: 35)
            .font(.system(size: 20))
            .foregroundColor(.white)
            .background(backgroundColor2)
            .clipShape(RoundedRectangle(cornerRadius: 10.0))
            .rotationEffect(.degrees(currentDegree))
            Button("11-16 lbs") {
                weight = false
                backgroundColor3 = Color.CustomYellowDark
                backgroundColor2 = Color.CustomYellowLight
                backgroundColor1 = Color.CustomYellowLight
                backgroundColor4 = Color.CustomYellowLight
                backgroundColor5 = Color.CustomYellowLight
                withAnimation(Animation.easeIn){
                    currentDegree += 360.0
                }
            }
            .frame(width: 150, height: 35)
            .font(.system(size: 20))
            .foregroundColor(.white)
            .background(backgroundColor3)
            .clipShape(RoundedRectangle(cornerRadius: 10.0))
            .rotationEffect(.degrees(currentDegree))
            Button("17-22 lbs") {
                weight = false
                backgroundColor4 = Color.CustomYellowDark
                backgroundColor2 = Color.CustomYellowLight
                backgroundColor3 = Color.CustomYellowLight
                backgroundColor1 = Color.CustomYellowLight
                backgroundColor5 = Color.CustomYellowLight
                withAnimation(Animation.easeIn){
                    currentDegree += 360.0
                }
            }
            .frame(width: 150, height: 35)
            .font(.system(size: 20))
            .foregroundColor(.white)
            .background(backgroundColor4)
            .clipShape(RoundedRectangle(cornerRadius: 10.0))
            .rotationEffect(.degrees(currentDegree))
            Button("23+ lbs") {
                weight = false
                backgroundColor5 = Color.CustomYellowDark
                backgroundColor2 = Color.CustomYellowLight
                backgroundColor3 = Color.CustomYellowLight
                backgroundColor4 = Color.CustomYellowLight
                backgroundColor1 = Color.CustomYellowLight
                withAnimation(Animation.easeIn){
                    currentDegree += 360.0
                }
            }
            .frame(width: 150, height: 35)
            .font(.system(size: 20))
            .foregroundColor(.white)
            .background(backgroundColor5)
            .clipShape(RoundedRectangle(cornerRadius: 10.0))
            .rotationEffect(.degrees(currentDegree))
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
