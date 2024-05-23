//
//  NutritiousView.swift
//  HealthyHabits
//
//  Created by Neha Darji on 5/21/24.
//

import SwiftUI

struct NutritiousView: View {
    let tofuURL = URL(string: "https://www.allrecipes.com/sheet-pan-black-pepper-tofu-and-broccoli-recipe-8649317")!
    let chickenURL = URL(string: "https://www.allrecipes.com/best-grilled-chicken-breasts-recipe-8648903")!
    let PearlURL = URL(string: "https://www.allrecipes.com/mediterranean-pearl-couscous-recipe-8646349")!
    let onionURL = URL(string: "https://www.allrecipes.com/copycat-onion-wrapped-flying-dutchman-recipe-8553215")!
    let codURL = URL(string: "https://www.allrecipes.com/mediterranean-baked-cod-recipe-8576276")!
    var body: some View {
        Button(action: {
            Link("Sheet Pan Black Pepper Tofu and Broccoli", destination: tofuURL)
        }, label: {
            Image("tofu")
                .resizable()
                .frame(width: 150, height: 150)
        })
        
        Link("Sheet Pan Black Pepper Tofu and Broccoli", destination: URL(string: "https://www.allrecipes.com/sheet-pan-black-pepper-tofu-and-broccoli-recipe-8649317")!)
        
        Button(action: {
            Link("The Best Grilled Chicken Breasts", destination: chickenURL)
        }, label: {
            Image("chicken")
                .resizable()
                .frame(width: 150, height: 150)
        })
        Link("The Best Grilled Chicken Breasts", destination: URL(string: "https://www.allrecipes.com/best-grilled-chicken-breasts-recipe-8648903")!)
        
        Button(action: {
            Link("Mediterranean Pearl Couscous", destination: PearlURL)
        }, label: {
            Image("pearl")
                .resizable()
                .frame(width: 150, height: 150)
        })
        
        Link("Mediterranean Pearl Couscous", destination: URL(string: "https://www.allrecipes.com/mediterranean-pearl-couscous-recipe-8646349")!)
        
        Button(action: {
            Link("Copycat Onion Wrapped Flying Dutchman", destination: onionURL)
        }, label: {
            Image("onion")
                .resizable()
                .frame(width: 150, height: 150)
        })
        
        Link("Copycat Onion Wrapped Flying Dutchman", destination: URL(string: "https://www.allrecipes.com/copycat-onion-wrapped-flying-dutchman-recipe-8553215")!)
        
        Button(action: {
            Link("Mediterranean Baked Cod", destination: codURL)
        }, label: {
            Image("cod")
                .resizable()
                .frame(width: 150, height: 150)
        })
        
        Link("Mediterranean Baked Cod", destination: URL(string: "https://www.allrecipes.com/mediterranean-baked-cod-recipe-8576276")!)

        
    }
}

#Preview {
    NutritiousView()
}
