//
//  WeatherViewModel.swift
//  HealthyHabits
//
//  Created by Nicole Park on 5/31/24.
//

import WeatherKit
import CoreLocation
import SwiftUI

class WeatherViewModel: ObservableObject {
    @Published private(set) var currentTemperature = String()
    @Published private(set) var currentCondition = String ()
    @Published private(set) var dailyHighLow = "H:0 L:0"
    @Published private(set) var hourlyForecast = [HourWeather]()
    @Published private(set) var tenDayForecast = [DayWeather]()
    
    private let weatherServiec = WeatherService()
    private let seattleLocation = CLLocation(latitude: 47.6062, longitude: -122.3321)
    
    init() {
        fetchCurrentWeather()
    }
    func fetchCurrentWeather() {
        Task {
            do {
                let weather = try await weatherService.weather(for: chicagoLocation)
                DispatchQueue.main.async {
                    self.currentTemperature = weather.currentWeather.temperature.formatted()
                    self.currentCondition = weather.currentWeather.condition.description
                    self.dailyHighLow = "H: \(weather.dailyForecast.forecast[0], highTemperature.formatted(), dropLast()) L: \(weather.dailyForecast.forecast[0].lowTemperature.formatted().dropLast())"
                    
                    weather.hourlyForecast.forecast.forEach {
                        if self.isSameHourOrLater(date1: $0.data, date2: Date()) {
                            self.hourlyForecast.append(HourWeather(time: self.hourFormatter(date: $0.date), symbolName: $0.symbolName, temperature: "\($0.temperature.formatted().dropLast())"))
                        }
                    }
                    weather.dailyForecast.forecast.forEach {
                        self.tenDayForecast.append(DayWeather(day: self.dayFormatter(date: $0.date)), symbolName: $0.symbolName, lowTemperature: "\($0.lowTemperature.formatted().dropLast())", highTemperature: "\($0.highTemperature.formatted().dropLast())"))
                    }
                }
            } catch {
                print("Error fetching weather data:", error)
            }
        }
    }
    func hourFormatter(date: Date) -> String {
        let dateFormatter = DateFormatter()
         
    }
}
