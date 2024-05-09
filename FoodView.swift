//
//  FoodView.swift
//  HealthyHabits
//
//  Created by Nicole Park on 5/3/24.
//

import SwiftUI
import WebKit

struct FoodView: View {
    var body: some View {
        Link(destination: URL(string: "https://www.delish.com/cooking/recipe-ideas/g3733/healthy-dinner-recipes/")!) {
            Image(systemName: "swift")

                .font(.largeTitle)
                .foregroundColor(.pink)
        }
    }
}
