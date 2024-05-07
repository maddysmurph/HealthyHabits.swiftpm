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
            HStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 65)
                        .size(width: 180, height: 265)
                        .foregroundColor(.CustomGreenLight)
                        .padding([.leading])
                        .offset(x: 5, y: 15)
                    VStack {
                        Text("Get")
                            .font(.system(size: 30))
                            .foregroundColor(.black)
                            .offset(x: -25, y: 13)
                        Text("Food")
                            .font(.system(size: 50))
                            .foregroundColor(.CustomGreenDark)
                            .offset(x: -10, y: 5)
                            .bold()
                        Text("Inspo")
                            .font(.system(size: 30))
                            .foregroundColor(.black)
                            .offset(x: -30, y: -5)
                        VStack {
                            Image("foodinspothumbnail")
                                .resizable()
                                .clipShape(Circle())
                                .frame(width: 120, height: 120)
                                .offset(x: 12, y: -25)
                        }
                    }
                    NavigationLink {
                        FoodView()
                    } label: {
                        Image(systemName: "arrowshape.right.circle.fill")
                            .resizable()
                            .frame(width: 60, height: 60)
                            .foregroundColor(.CustomYellowDark)
                            .offset(x: 60, y: -40)
                    }
                    RoundedRectangle(cornerRadius: 45)
                        .size(width: 150, height: 150)
                        .foregroundColor(.CustomBlueLight)
                        .padding([.leading])
                        .offset(x: 5, y: 150)
                }
                VStack {
                    RoundedRectangle(cornerRadius: 65)
                        .size(width: 350, height: 200)
                        .foregroundColor(.CustomPinkLight)
                        .padding([.leading])
                        .offset(x: 5, y: 0)
                }
                //            TabView {
                //            }
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
