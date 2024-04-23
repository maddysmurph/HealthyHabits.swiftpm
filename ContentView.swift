import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Welcome to")
            .font(.system(size: 40))
            .foregroundColor(.black)
        Text("Healthy Habits")
            .font(.system(size: 45))
            .bold()
            .foregroundColor(.black)
        Divider()
            .padding(25.0)
        VStack {
            VStack {
                HStack {
                    Image(systemName: "fork.knife")
                        .resizable()
                        .frame(width: 35, height: 70)
                    Text("Personalized goals")
                        .font(.system(size: 25))
                        .multilineTextAlignment(.leading)
                        .bold()
                        .foregroundColor(.black)
                }
                VStack {
                    HStack {
                        Image(systemName: "figure.run")
                            .resizable()
                            .frame(width: 45, height: 60)
                        Text("Track your activity")
                            .font(.system(size: 25))
                            .multilineTextAlignment(.leading)
                            .bold()
                            .foregroundColor(.black)
                    }
                }
                VStack {
                    HStack {
                        Image(systemName: "clock.fill")
                            .resizable()
                            .frame(width: 50, height: 50)
                        Text("Fix your sleep schedule")
                            .font(.system(size: 22))
                            .multilineTextAlignment(.leading)
                            .bold()
                            .foregroundColor(.black)
                    }
                }
                NavigationView {
                    NavigationLink("Get Started") {
                        QuestionView()
                            .frame(width: 100, height: 40)
                                                .font(.system(size: 30))
                                                .foregroundColor(.white)
                                                .background(.pink)
                                                .clipShape(RoundedRectangle(cornerRadius: 10.0))
                    }
                }
            }
        }
    }
}
extension Color {
    static let CustomYellowLight = Color (red: 250/255, green: 218/255, blue: 94/255)
}
extension Color {
    static let CustomYellowDark = Color (red: 255/255, green: 195/255, blue: 11/255)
}

