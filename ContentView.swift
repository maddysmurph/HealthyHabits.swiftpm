import SwiftUI
import UserNotifications
struct ContentView: View {
    

    var body: some View {
        NavigationStack {
            VStack{
                Text("Welcome to")
                    .font(.system(size: 40))
                    .foregroundColor(.black)
                Text("Healthy Habits")
                    .font(.system(size: 45))
                    .bold()
                    .foregroundColor(.black)
                
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
                                    .font(.system(size: 25))
                                    .multilineTextAlignment(.leading)
                                    .bold()
                                    .foregroundColor(.black)
                            }
                        }
                        Divider()
                            .padding(20.0)
                        VStack(alignment: .center, spacing: 10){
                            NavigationLink("Get Started") {
                                QuestionView()
                                
                            }
                            .frame(width: 150, height: 40)
                            .font(.system(size: 20))
                            .bold()
                            .foregroundColor(.white)
                            .background(Color.CustomYellowDark)
                            .clipShape(RoundedRectangle(cornerRadius: 10.0))
                            .animation(.easeIn, value: 180)
                            
                            Text("Already Entered Your Information?")
                                .font(.system(size: 20))
                                
                                .foregroundColor(.black)
                            Text("Click Below:")
                                .font(.system(size: 20))
                               
                                .foregroundColor(.black)
                            NavigationLink("Home") {
                                HomeView()
                            }
                            .frame(width: 150, height: 40)
                            .font(.system(size: 20))
                            .bold()
                            .foregroundColor(.white)
                            .background(Color.CustomYellowDark)
                            .clipShape(RoundedRectangle(cornerRadius: 10.0))
                            .animation(.easeIn, value: 180)
                            
                        }
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


