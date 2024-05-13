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
                    .font(.system(size: 50))
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
                            .offset(x: 20, y: 120)
                        Text("Reminder")
                            .font(.system(size: 20))
                            .foregroundColor(.black)
                            .offset(x: 18, y: 150)
                    }
                }
                VStack {
                    Text("Get")
                        .font(.system(size: 30))
                        .foregroundColor(.black)
                        .offset(x: -140, y: -110)
                    Text("Food")
                        .font(.system(size: 50))
                        .foregroundColor(.CustomGreenDark)
                        .offset(x: -90, y: -120)
                        .bold()
                    Text("Inspo")
                        .font(.system(size: 30))
                        .foregroundColor(.black)
                        .offset(x: -60, y: -130)
                    VStack {
                        Image("foodinspothumbnail")
                            .resizable()
                            .clipShape(Circle())
                            .frame(width: 100, height: 100)
                            .offset(x: -90, y: -140)
                    }
                }
                
                NavigationLink {
                    FoodView()
                } label: {
                    Image(systemName: "arrowshape.right.circle.fill")
                        .resizable()
                        .frame(width: 60, height: 60)
                        .foregroundColor(.white)
                        .offset(x: -90, y: -225)
                }
                RoundedRectangle(cornerRadius: 65)
                    .size(width: 350, height: 200)
                    .foregroundColor(.CustomPinkLight)
                    .padding([.leading])
                    .offset(x: 5, y: -165)
            }
                        }
        HStack{
            NavigationLink{
                trackerView()
            } label: {
                Image(systemName: "pin")
            }
            
            NavigationLink{
                HomeView()
            } label: {
                Image(systemName: "house")
            }
            
            NavigationLink{
                AboutView()
            }label: {
                Image(systemName: "person")
            }
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
        static let CustomBlueLight = Color (red: 170/255, green: 216/255, blue: 230/255)
    }
extension Color {
    static let CustomBlueDark = Color (red: 15/255, green: 82/255, blue: 180/255)
}

