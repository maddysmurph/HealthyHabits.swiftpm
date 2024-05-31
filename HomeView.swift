//
//  HomeView.swift
//  HealthyHabits
//
//  Created by Nicole Park on 4/29/24.
//

import SwiftUI

struct HomeView: View {
    @AppStorage("Name") var name: String = ""
    var body: some View {
        
        VStack(alignment: .leading) {
            
            HStack {
                Text("Hello \(name)")
                    .font(.system(size: 45))
                    .foregroundColor(.black)
                    .bold()
                    .padding([.leading])
            }
            Text("Health Plan made just for you.")
                .font(.system(size: 15))
                .foregroundColor(.black)
                .padding([.leading])
            Divider()
            VStack {
                HStack {
                    RoundedRectangle(cornerRadius: 65)
                        .size(width: 180, height: 265)
                        .foregroundColor(.CustomGreenLight)
                        .padding([.leading])
                        .offset(x: 5, y: 15)
                    ZStack {
                        RoundedRectangle(cornerRadius: 45)
                            .size(width: 150, height: 150)
                            .foregroundColor(.CustomBlueLight)
                            .padding([.leading])
                            .offset(x: 5, y: 150)
                        Text("Sleep")
                            .font(.system(size: 35))
                            .foregroundColor(.CustomBlueDark)
                            .bold()
                            .offset(x: 0, y: 60)
                        Text("Reminder")
                            .font(.system(size: 21))
                            .foregroundColor(.black)
                            .offset(x: 0, y: 90)
                    }
                }
                VStack {
                    Text("Get")
                        .font(.system(size: 30))
                        .foregroundColor(.black)
                        .offset(x: -130, y: -200)
                    Text("Food")
                        .font(.system(size: 50))
                        .foregroundColor(.CustomGreenDark)
                        .offset(x: -90, y: -200)
                        .bold()
                    Text("Inspo")
                        .font(.system(size: 30))
                        .foregroundColor(.black)
                        .offset(x: -60, y: -200)
                    NavigationLink("Go") {
                        FoodView()
                    }
                    .frame(width: 80, height: 35)
                    .font(.system(size: 20))
                    .bold()
                    .foregroundColor(.white)
                    .background(Color.CustomYellowDark)
                    .clipShape(RoundedRectangle(cornerRadius: 10.0))
                    .offset(x: -90, y: -200)
                    ZStack {
                        RoundedRectangle(cornerRadius: 65)
                            .size(width: 350, height: 200)
                            .foregroundColor(.CustomPinkLight)
                            .padding([.leading])
                            .offset(x: 5, y: -150)
                        Text("Exercises")
                            .font(.system(size: 35))
                            .foregroundColor(.CustomPinkDark)
                            .offset(x: -60, y: -130)
                            .bold()
                        Text("Recommended for you")
                            .font(.system(size: 25))
                            .foregroundColor(.black)
                            .offset(x: -15, y: -100)
                        NavigationLink("Go") {
                            ExerciseView()
                        }
                        .frame(width: 80, height: 35)
                        .font(.system(size: 20))
                        .bold()
                        .foregroundColor(.white)
                        .background(Color.CustomYellowDark)
                        .clipShape(RoundedRectangle(cornerRadius: 10.0))
                        .offset(x: 5, y: -50)
                    }
                }
                
            }
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
}
    extension Color {
        static let CustomGreenLight = Color (red: 201/255, green: 238/255, blue: 145/255)
    }
    extension Color {
        static let CustomGreenDark = Color (red: 34/255, green: 139/255, blue: 34/255)
    }
    extension Color {
        static let CustomPinkLight = Color (red: 255/255, green: 224/255, blue: 233/255)
    }
    extension Color {
        static let CustomPinkDark = Color (red: 170, green: 51/255, blue: 106/255)
    }
    extension Color {
        static let CustomBlueLight = Color (red: 170/255, green: 216/255, blue: 230/255)
    }
    extension Color {
        static let CustomBlueDark = Color (red: 15/255, green: 82/255, blue: 180/255)
    }

