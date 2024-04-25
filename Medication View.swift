//
//  Medication View.swift
//  HealthyHabits
//
//  Created by Nicole Park on 4/23/24.
//

import Foundation
import SwiftUI

struct MedicationView: View {
    @State var Medication = false
    @State var Medicationtime = ""
    var body: some View {
        
        Text("Personalize")
            .font(.system(size: 30))
            .bold()
            .foregroundColor(.CustomYellowDark)
        
        Text("your health plan")
            .font(.system(size: 30))
            .bold()
            .foregroundColor(.black)
        
        Text("Do you take any medications?")
            .font(.system(size: 20))
            .foregroundColor(.CustomYellowLight)
        
        Button("No"){
            Medication = false
        }
        .font(.system(size: 20))
        .foregroundColor(.white)
        .background(.pink)
        .frame(width: 150, height: 35)
        .clipShape(RoundedRectangle(cornerRadius: 10.0))
       
        
        Button("Yes"){
            Text("When do you take the medication?")
            TextField("ex. 8 AM", text: $Medicationtime)
        }
        .font(.system(size: 20))
        .foregroundColor(.white)
        .background(.pink)
        .frame(width: 150, height: 35)
        .clipShape(RoundedRectangle(cornerRadius: 10.0))
        NavigationLink("Continue"){
            PhysicalActivityView()

        }
        .frame(width: 200, height: 40)
        .font(.system(size: 20))
        .bold()
        .foregroundColor(.white)
        .background(Color.CustomYellowDark)
        .clipShape(RoundedRectangle(cornerRadius: 10.0))

    }
}


