//
//  TrackerView.swift
//  HealthyHabits
//
//  Created by Maddy Murphy on 5/13/24.
//

import SwiftUI

struct trackerView: View {
    @State var Meals : [Meal] = []
    @State var newFoodItem: String = ""
    @State var newcalorieAmount: Int = 0
    var body: some View {
        Text("Track Your Daily Meals!")
            .font(.system(size: 50))
            .foregroundColor(.black)
            .bold()
        HStack{
            TextField("Enter Food Eaten Here", text: $newFoodItem)
                .textFieldStyle(.roundedBorder)
            TextField("Enter Calorie Value Here", value: $newcalorieAmount, format: .number)
                .textFieldStyle(.roundedBorder)
            
            Button("+"){
                let newItem = Meal(foodType: newFoodItem, calories: newcalorieAmount)
                Meals.append(newItem)
                
                newFoodItem = ""
                newcalorieAmount = 0
                
                
            }
            .frame(width: 30, height: 30)
            .background(Color.CustomYellowLight)
            .foregroundColor(.white)
            .bold()
           
        }
        List(){
            ForEach(Meals, id: \.self) { currentMeal in
                Text( "\(newFoodItem): \(newcalorieAmount) calories")
            }
        }
    }
}




struct Meal: Hashable {
    var foodType: String
    var calories: Int
    
    var body: some View {
        VStack{
            
        }
    }
}
