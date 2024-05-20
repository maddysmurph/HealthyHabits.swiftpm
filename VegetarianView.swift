//
//  VegetarianView.swift
//  HealthyHabits
//
//  Created by Neha Darji on 5/13/24.
//

import SwiftUI

struct VegetarianView: View {
    let KungPaoURL = URL(string: "https://www.foodnetwork.com/recipes/food-network-kitchen/kung-pao-cauliflower-5339620")!
    let FusilliPastaURL = URL(string: "https://themodernproper.com/fusilli-pasta-with-spicy-tomato-sauce")!
    let BrocolliURL = URL(string: "https://themodernproper.com/broccoli-cheddar-soup")!
    let SevenLayerURL = URL(string: "https://themodernproper.com/seven-layer-dip")!
    let creamyURL = URL(string: "https://themodernproper.com/creamy-cavatappi")!
    
    var body: some View {
        VStack{
            HStack{
                Button(action: {
                    Link("Kung Pao Caudiflower", destination: KungPaoURL)
                }, label: {
                    Image("1")
                        .resizable()
                        .frame(width: 125, height: 125)
                })
                
                Button(action: {
                    Link("Fusilli Pasta with Spicy Red Tomatoe Sauce", destination: FusilliPastaURL)
                }, label: {
                    Image("2")
                        .resizable()
                        .frame(width: 125, height: 125)
                })
            }
            HStack{
                Button(action: {
                    Link("Brocolli Cheddar Soup", destination: BrocolliURL)
                }, label: {
                    Image("3")
                        .resizable()
                        .frame(width: 125, height: 125)
                })
                Button(action: {
                    Link("7 Layer Dip", destination: SevenLayerURL)
                }, label: {
                    Image("4")
                        .resizable()
                        .frame(width: 125, height: 125)
                })
                Button(action: {
                    Link("Creamy Cavatappi", destination: creamyURL)
                }, label: {
                    Image("5")
                        .resizable()
                        .frame(width: 125, height: 125)
                })
            }
        }
    }
    
}
