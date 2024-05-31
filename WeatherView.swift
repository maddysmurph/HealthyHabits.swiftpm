////
////  WeatherView.swift
////  HealthyHabits
////
////  Created by Nicole Park on 5/31/24.
////
//
//import SwiftUI
//
//struct WeatherView: View {
//    @StateObject private var weatherViewModel = WeatherViewModel()
//    
//    var body: some View {
//        ZStack {
//            LinearGradient(gradient: Gradient(colors: [.blue, .blue, .orange]), startPoint: .top, endPoint: .bottom)
//                .edgesIgnoringSafeArea(.vertical)
//            
//            ScrollView(showsIndicators: false) {
//                VStack(spacing: 8) {
//                    Text("Seattle")
//                        .font(.title)
//                    Text(weatherViewModel.currentTemperature.dropLast())
//                        .font(.system(size: 72))
//                        .fontWeight(.light)
//                    Text(weatherViewModel.currentCondition)
//                    Text(weatherViewModel.dailyHighLow)
//                }
//                .foregroundColor(.white)
//                .padding()
//            }
//            VStack(alignment: .leading) {
//                Label("hourly forecast".uppercased(), systemImage: "clock")
//                    .font(.caption)
//                    .fontWeight(.bold)
//                    .padding([.top, .leading])
//                
//                ScrollView(.horizontal) {
//                    HStack {
//                        ForEach(weatherViewModel.hourlyForecast, id: \.time) {
//                            weather in
//                            VStack(spacing: 12) {
//                                Text(weather.time)
//                                    .font(.caption)
//                                
//                                Image(systemName: "\(weather.symbolName).fill")
//                                    .font(.title2)
//                                    .symbolRenderingMode(.multicolor)
//                                
//                                Text(weather.temperature)
//                                    .fontWeight(.seemibold)
//                            }
//                            .padding()
//                        }
//                    }
//                }
//                .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 8))
//                .padding()
//            }
//        }
//    }
//}
//struct WeatherView_Previews: PreviewProvider {
//    static var previews: some View {
//        WeatherView()
//    }
//}
