//
//  ExerciseTrackerView.swift
//  HealthyHabits
//
//  Created by Neha Darji on 5/28/24.
//

import SwiftUI

struct ExerciseTrackerView: View {
    @State var exercises: [ExerciseTracking] = []
    
    var body: some View {
        VStack(alignment: .leading){
            Text("Track Your Exercise")
                .font(.system(size: 50))
                .foregroundColor(.black)
                .bold()
        }
        HeaderView(exercises: $exercises)
        List(exercises, id: \.self){ currentExercise in
            ListView(currentexercise: currentExercise)
        }
        Spacer()
        HStack(spacing: 20){
            NavigationLink{
                favoritesView()
            } label: {
                Image(systemName: "heart")
                    .resizable()
                    .frame(width: 60, height: 50)
                    .foregroundColor(.white)
            }
            NavigationLink{
                TrackerView()
            } label: {
                Image(systemName: "pin")
                    .resizable()
                    .frame(width: 40, height: 60)
                    .foregroundColor(.white)
            }
            
            NavigationLink{
                HomeView()
            } label: {
                Image(systemName: "house.circle")
                    .resizable()
                    .frame(width: 70, height: 65)
                    .foregroundColor(.white)
            }
            
            NavigationLink{
                AboutView()
            }label: {
                Image(systemName: "person")
                    .resizable()
                    .frame(width: 55, height: 60)
                    .foregroundColor(.white)
            }
            NavigationLink{
                ExerciseTrackerView()
            } label: {
                Image(systemName: "figure.run")
                    .resizable()
                    .frame(width: 45, height: 63)
                    .foregroundColor(.white)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: 70)
        .background(Color.CustomYellowLight)
    }
}

