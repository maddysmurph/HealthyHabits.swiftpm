//
//  VeganView.swift
//  HealthyHabits
//
//  Created by Neha Darji on 5/13/24.
//

import SwiftUI

struct VeganView: View {
    let MacSaladURL = URL(string: "https://www.noracooks.com/vegan-macaroni-salad/")!
    let WhiteBeanURL = URL(string: "https://www.noracooks.com/white-bean-soup/")!
    let VeganURL = URL(string: "https://www.noracooks.com/vegan-lo-mein/")!
    let SweetURL = URL(string: "https://www.noracooks.com/vegan-sweet-potato-black-bean-chili/")!
    let SaladURL = URL(string: "https://www.noracooks.com/vegan-caesar-salad/")!
    @State var foregroundColor1 = Color.CustomLightPink
    @State var foregroundColor2 = Color.CustomLightPink
    @State var foregroundColor3 = Color.CustomLightPink
    @State var foregroundColor4 = Color.CustomLightPink
    @State var foregroundColor5 = Color.CustomLightPink
    var body: some View {
        HStack{
            VStack{
                Button(action: {
                    Link("Macaroni Salad", destination: MacSaladURL)
                }, label: {
                    Image("6")
                        .resizable()
                        .frame(width: 150, height: 150)
                })
                
                Link("Macaroni Salad", destination: URL(string: "https://www.noracooks.com/vegan-macaroni-salad/")!)
            }
            Button {
                foregroundColor1 = Color.CustomPaleVioletred
            } label: {
                Image(systemName: "heart")
                    .foregroundColor(foregroundColor1)
            }
        }
        HStack{
            VStack{
                Button(action: {
                    Link("White Bean Soup", destination: WhiteBeanURL)
                }, label: {
                    Image("7")
                        .resizable()
                        .frame(width: 150, height: 150)
                })
                Link("White Bean Soup", destination: URL(string: "https://www.noracooks.com/white-bean-soup/")!)
            }
            Button {
                foregroundColor2 = Color.CustomPaleVioletred
            } label: {
                Image(systemName: "heart")
                    .foregroundColor(foregroundColor2)
            }
        }
        HStack{
            VStack{
                Button(action: {
                    Link("Vegan Lo Mein", destination: VeganURL)
                }, label: {
                    Image("8")
                        .resizable()
                        .frame(width: 150, height: 150)
                })
                
                Link("Vegan Lo Mein", destination: URL(string: "https://www.noracooks.com/vegan-lo-mein/")!)
            }
            Button {
                foregroundColor3 = Color.CustomPaleVioletred
            } label: {
                Image(systemName: "heart")
                    .foregroundColor(foregroundColor3)
            }
        }
        HStack{
            VStack{
                Button(action: {
                    Link("Sweet Potatoe Black Bean Chili", destination: SweetURL)
                }, label: {
                    Image("9")
                        .resizable()
                        .frame(width: 150, height: 150)
                })
                
                Link("Sweet Potatoe Black Bean Chili", destination: URL(string: "https://www.noracooks.com/vegan-sweet-potato-black-bean-chili/")!)
            }
            Button {
                foregroundColor4 = Color.CustomPaleVioletred
            } label: {
                Image(systemName: "heart")
                    .foregroundColor(foregroundColor4)
            }
        }
        HStack{
            VStack{
                Button(action: {
                    Link("The Best Vegan Caesar Salad", destination: SaladURL)
                }, label: {
                    Image("10")
                        .resizable()
                        .frame(width: 150, height: 150)
                })
                
                Link("The Best Vegan Caesar Salad", destination: URL(string: "https://www.noracooks.com/vegan-caesar-salad/")!)
            }
            
            Button {
                foregroundColor5 = Color.CustomPaleVioletred
            } label: {
                Image(systemName: "heart")
                    .foregroundColor(foregroundColor5)
            }
        }
    }
}

