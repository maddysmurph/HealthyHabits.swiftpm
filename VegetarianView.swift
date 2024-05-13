//
//  VegetarianView.swift
//  HealthyHabits
//
//  Created by Neha Darji on 5/13/24.
//

import SwiftUI

struct VegetarianView: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 45)
                .size(width: 180, height: 265)
                .foregroundColor(.CustomBlueLight)
            HStack{
                Text("Broccoli Cheddar Soup")
                    .font(.system(size: 35))
                    .foregroundColor(.black)
                    .bold()
                Text("-Salted Butter")
                    .font(.system(size: 15))
                    .foregroundColor(.black)
                Text("-Onion")
                    .font(.system(size: 15))
                    .foregroundColor(.black)
                Text("-Garlic")
                    .font(.system(size: 15))
                    .foregroundColor(.black)
                Text("-All Purpose Flour")
                    .font(.system(size: 15))
                    .foregroundColor(.black)
                Text("-Sea Salt")
                    .font(.system(size: 15))
                    .foregroundColor(.black)
                Text("-Mustard Powder")
                    .font(.system(size: 15))
                    .foregroundColor(.black)
                Text("-Nutmeg")
                    .font(.system(size: 15))
                    .foregroundColor(.black)
                Text("-Whole milk or half-and-half")
                    .font(.system(size: 15))
                    .foregroundColor(.black)
                Text("-Vegetable Stock")
                    .font(.system(size: 15))
                    .foregroundColor(.black)
                Text("-Broccoli")
                    .font(.system(size: 15))
                    .foregroundColor(.black)
                Text("-Parmesan")
                    .font(.system(size: 15))
                    .foregroundColor(.black)
                Text("-Extra-sharp cheddar cheese")
                    .font(.system(size: 15))
                    .foregroundColor(.black)
                Text("-Black pepper")
                    .font(.system(size: 15))
                    .foregroundColor(.black)
            }
        }
    }
}

#Preview {
    VegetarianView()
}
