//
//  Medication View.swift
//  HealthyHabits
//
//  Created by Nicole Park on 4/23/24.
//

import Foundation
import SwiftUI

struct MedicationView: View {
    @AppStorage("Medication") var Medication: Bool = false
    @AppStorage("MedicationTime") var Medicationtime: String = ""
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
        
        Text("Do you take any medications?")
            .font(.system(size: 20))
            .foregroundColor(.black)
        
        Button("Yes"){
            Medication = false
        }
        .frame(width: 150, height: 35)
        .font(.system(size: 20))
        .foregroundColor(.white)
        .background(Color.CustomYellowLight)
        .clipShape(RoundedRectangle(cornerRadius: 10.0))
       
        
        Button("No"){
            Text("When do you take the medication?")
            TextField("ex. 8 AM", text: $Medicationtime)
        }
        .frame(width: 150, height: 35)
        .font(.system(size: 20))
        .foregroundColor(.white)
        .background(Color.CustomYellowLight)
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


