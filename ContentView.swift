import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Welcome To...")
            .font(.system(size: 30))
            .bold()
            .foregroundColor(.yellow)
       Text("HEALTHY HABITS")
            .font(.system(size: 45))
            .bold()
            .foregroundColor(.yellow)
        Text("Track and Personalize Your Health Plan")
            .bold()
            .foregroundColor(.yellow)
        NavigationView {
            NavigationLink("Get Started") {
                QuestionView()
            }
        }
    }
}
extension Color {
    static let CustomYellowLight = Color (red: 218/255, green: 165/255, blue: 32/255)
}
extension Color {
    static let CustomYellowDark = Color (red: 218/255, green: 165/255, blue: 32/255)
}
