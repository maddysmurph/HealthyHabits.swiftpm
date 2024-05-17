//
//  AboutView.swift
//  HealthyHabits
//
//  Created by Nicole Park on 5/3/24.
//

import SwiftUI

struct AboutView: View {
    
    @AppStorage("Name") var name: String = ""
    @AppStorage("Age") var age: Int = 0
    @AppStorage("Sex") var sex: String = ""
    @AppStorage("Weight") var weight: Int = 0
    @AppStorage("Height") var height: Int = 0
    @AppStorage ("Health Condition") var healthCondition = false
    @AppStorage ("Health Problem") var specificHealthCondition = ""
    @AppStorage("Medication") var Medication: Bool = false
    @AppStorage("MedicationTime") var Medicationtime: String = ""
    @AppStorage ("PhysicalActivity") var physicalactivity: Bool = false
    @AppStorage ("PreferredExerciseType") var preferredexercisetype: Bool = false

    var body: some View {
        Text("Healthy Habits")
            .font(.system(size: 45))
            .bold()
            .foregroundColor(.CustomYellowDark)
        
        Text("Information:")
            .font(.system(size: 20))
            .bold()
        VStack(alignment: .leading, spacing: 10){
            
            
            Text("Name: \(name)")
            Text("Age: \(age)")
            Text("Sex: \(sex)")
            Text("Weight: \(weight)")
            Text("Height: \(height)")
            Text("Health Condition: \(healthCondition)")
            Text("Health Problem: \(specificHealthCondition)")
            Text("Medication: \(Medication)")
            Text("Medication Time: \(Medicationtime)")
            Text("Physical Activity: \(physicalactivity)")
            Text("Preferred Exercise: \(preferredexercisetype)")
        }
        .font(.system(size: 20))
        HStack(spacing: 20){
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
                    .frame(width: 85, height: 80)
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
        .frame(maxWidth: .infinity, maxHeight: 130)
        .background(Color.CustomYellowLight)
    }
}

