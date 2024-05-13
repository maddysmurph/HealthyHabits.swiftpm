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

#Preview {
    AboutView()
}
