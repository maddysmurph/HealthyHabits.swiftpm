//
//  TrackerView.swift
//  HealthyHabits
//
//  Created by Maddy Murphy on 5/13/24.
//

import SwiftUI

struct trackerView: View {
    @State var Meals : [Meals]
    var body: some View {
        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Hello, world!@*/Text("Hello, world!")/*@END_MENU_TOKEN@*/
    }
}




struct Meals: Hashable {
    var foodType: String
    var calories: Int
    
    var body: some View {
        VStack{
            
        }
    }
}
