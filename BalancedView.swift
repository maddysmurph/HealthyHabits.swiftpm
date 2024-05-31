//
//  BalancedView.swift
//  HealthyHabits
//
//  Created by Neha Darji on 5/13/24.
//

import SwiftUI

struct BalancedView: View {
    let healthyURL = URL(string: "https://www.bbcgoodfood.com/recipes/summer-salmon-pasta")!
    let pestoURL = URL(string: "https://www.bbcgoodfood.com/recipes/healthy-pesto-eggs-on-toast")!
    let speedyURL = URL(string: "https://www.bbcgoodfood.com/recipes/speedy-lentil-coconut-curry")!
    let gnocchiURL = URL(string: "https://www.bbcgoodfood.com/recipes/healthy-gnocchi")!
    let crunchyURL = URL(string: "https://www.bbcgoodfood.com/recipes/crunchy-noodle-salad")!
    @State var foregroundColor1 = Color.CustomLightPink
    @State var foregroundColor2 = Color.CustomLightPink
    @State var foregroundColor3 = Color.CustomLightPink
    @State var foregroundColor4 = Color.CustomLightPink
    @State var foregroundColor5 = Color.CustomLightPink

    var body: some View {
        VStack{
            HStack{
                VStack{
                    Button(action: {
                        Link("Healthy Saumon Pasta", destination: healthyURL)
                    }, label: {
                        Image("16")
                            .resizable()
                            .frame(width: 150, height: 150)
                    })
                    .animation(.easeIn, value: 180)
                    Link("Healthy Saumon Pasta", destination: URL(string: "https://www.bbcgoodfood.com/recipes/summer-salmon-pasta")!)
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
                        Link("Healthy Pesto Eggs on Toast", destination: pestoURL)
                    }, label: {
                        Image("17")
                            .resizable()
                            .frame(width: 150, height: 150)
                    })
                    .animation(.easeIn, value: 180)
                    Link("Healthy Pesto Eggs on Toast", destination: URL(string: "https://www.bbcgoodfood.com/recipes/healthy-pesto-eggs-on-toast")!)
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
                        Link("Speedy Lentil Coconut Curry", destination: speedyURL)
                    }, label: {
                        Image("18")
                            .resizable()
                            .frame(width: 150, height: 150)
                    })
                    .animation(.easeIn, value: 180)
                    Link("Speedy Lentil Coconut Curry", destination: URL(string: "https://www.bbcgoodfood.com/recipes/speedy-lentil-coconut-curry")!)
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
                        Link("Healthy Gnocchi", destination: gnocchiURL)
                    }, label: {
                        Image("19")
                            .resizable()
                            .frame(width: 150, height: 150)
                    })
                    .animation(.easeIn, value: 180)
                    Link("Healthy Gnocchi", destination: URL(string: "https://www.bbcgoodfood.com/recipes/healthy-gnocchi")!)
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
                        Link("Crunchy Noodle Salad", destination: crunchyURL)
                    }, label: {
                        Image("20")
                            .resizable()
                            .frame(width: 150, height: 150)
                    })
                    .animation(.easeIn, value: 180)
                    Link("Crunchy Noodle Salad", destination: URL(string: "https://www.bbcgoodfood.com/recipes/crunchy-noodle-salad")!)
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
}

