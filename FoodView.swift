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
        VStack {
            HStack {
                Button(action: {
                    Link("Go To Recipe", destination: URL(string: "https://www.delish.com/cooking/recipe-ideas/a46332008/chicken-shawarma-bowls-recipe/")!)
                }, label: {
                    Image("1")
                        .resizable()
                        .clipShape(Rectangle())
                        .frame(width: 100, height: 500)
                })
                Button(action: {
                    Link("Go To Recipe", destination: URL(string: "https://www.delish.com/cooking/a45877598/indian-butter-chickpeas-recipe/")!)
                }, label: {
                    Image("2")
                        .resizable()
                        .clipShape(Rectangle())
                        .frame(width: 100, height: 500)
                })
                Button(action: {
                    Link("Go To Recipe", destination: URL(string: "https://www.delish.com/cooking/recipe-ideas/a27115412/cheeseburger-cabbage-wraps-recipe/")!)
                }, label: {
                    Image("3")
                        .resizable()
                        .clipShape(Rectangle())
                        .frame(width: 100, height: 500)
                })
            }
        }
    }
}
