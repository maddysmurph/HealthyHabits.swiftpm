import SwiftUI

struct HealthConditionView: View {
    @AppStorage ("Health Condition") var healthCondition = false
    @AppStorage ("Health Problem") var specificHealthCondition = ""
    let healthConditionOptions = ["Diabetes Type 1", "Diabetes Type 2", "Heart Condition","High Cholessterol","High Blood Presssure","Low Blood Pressure", "Not Listed"]
    @State var backgroundColor1 = Color.CustomYellowLight
    @State var backgroundColor2 = Color.CustomYellowLight
    @State var showingAlert = false
    
    var body: some View {
        VStack {
            Text("Personalize")
                .font(.system(size: 30))
                .bold()
                .foregroundColor(.CustomYellowDark)
            
            Text("your health plan")
                .font(.system(size: 30))
                .bold()
                .foregroundColor(.black)
            
            Text("Do you have a health condition?")
                .font(.system(size: 20))
                .foregroundColor(.CustomYellowLight)
            
            Divider()
            
            Button("Yes") {
                healthCondition = true
                backgroundColor1 = Color.CustomYellowDark
                backgroundColor2 = Color.CustomYellowLight
                showingAlert = true
            }
            .frame(width: 150, height: 35)
            .font(.system(size: 20))
            .foregroundColor(.white)
            .background(backgroundColor1)
            .clipShape(RoundedRectangle(cornerRadius: 10.0))
            
            Button("No") {
                healthCondition = false
                backgroundColor2 = Color.CustomYellowDark
                backgroundColor1 = Color.CustomYellowLight
            }
            .frame(width: 150, height: 35)
            .font(.system(size: 20))
            .foregroundColor(.white)
            .background(backgroundColor2)
            .clipShape(RoundedRectangle(cornerRadius: 10.0))
            
            Divider()
            
            NavigationLink("Continue") {
                PhysicalActivityView()
            }
            .frame(width: 200, height: 40)
            .font(.system(size: 20))
            .bold()
            .foregroundColor(.white)
            .background(Color.CustomYellowDark)
            .clipShape(RoundedRectangle(cornerRadius: 10.0))
            
            
            
        }
        .sheet(isPresented: $showingAlert) {
            VStack {
                Text("Select the most applicable option to your needs:")
                    .font(.system(size: 20))
                    .bold()
                    .foregroundColor(.CustomYellowDark)
                
                Picker("Supported Medical Conditions:", selection: $specificHealthCondition) {
                    ForEach(healthConditionOptions, id: \.self) {
                        Text($0)
                    }
                }
                .frame(width: 300, height: 35)
                .font(.system(size: 40))
                .foregroundColor(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10.0))
                .pickerStyle(.menu)
                Divider()
                Button("Save") {
                    showingAlert = false
                }
                .frame(width: 150, height: 35)
                .font(.system(size: 20))
                .foregroundColor(.white)
                .background(backgroundColor2)
                .clipShape(RoundedRectangle(cornerRadius: 10.0))
                
            }
        }
    }
}
