import SwiftUI
import UserNotifications
struct ContentView: View {
    @State private var permissionGranted = false

    private func requestPermissions() {
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { success, error in
            if success {
                permissionGranted = true
            } else if let error = error {
                print(error.localizedDescription)
            }
        }
    }

    private func sendNotification() {
        let notificationContent = UNMutableNotificationContent()
        notificationContent.title = "Hello world!"
        notificationContent.subtitle = "Here's how you send a notification in SwiftUI"

        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
        // you could also use...
        // UNCalendarNotificationTrigger(dateMatching: .init(year: 2022, month: 12, day: 10, hour: 0, minute: 0), repeats: true)

        let req = UNNotificationRequest(identifier: UUID().uuidString, content: notificationContent, trigger: trigger)

        UNUserNotificationCenter.current().add(req)
    }

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
                        VStack(alignment: .center, spacing: 30){
                            NavigationLink("Get Started") {
                                QuestionView()
                                
                            }
                            .frame(width: 150, height: 40)
                            .font(.system(size: 20))
                            .bold()
                            .foregroundColor(.white)
                            .background(Color.CustomYellowDark)
                            .clipShape(RoundedRectangle(cornerRadius: 10.0))
                            NavigationLink("Home") {
                                HomeView()
                            }
                            VStack {
                                if !permissionGranted {
                                    Button("Click to allow notifications") {
                                        requestPermissions()
                                    }
                                }

                                if permissionGranted {
                                    Button("Send Notification") {
                                        sendNotification()
                                    }
                                }
                            }
                            .onAppear {
                                // Check if we already have permissions to send notifications
                                UNUserNotificationCenter.current().getNotificationSettings { settings in
                                    if settings.authorizationStatus == .authorized {
                                        permissionGranted = true
                                    }
                                }
                            }
                            .padding()
                            
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


