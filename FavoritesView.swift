//
//  FavoritesView.swift
//  HealthyHabits
//
//  Created by Maddy Murphy on 5/31/24.
//

import SwiftUI

struct favoritesView: View {
    var body: some View {
        Text("Your Favorites")
        
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
        }
        .frame(maxWidth: .infinity, maxHeight: 70)
        .background(Color.CustomYellowLight)
    }
}

