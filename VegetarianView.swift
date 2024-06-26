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
    @State var foregroundColor1 = Color.CustomLightPink
    @State var foregroundColor2 = Color.CustomLightPink
    @State var foregroundColor3 = Color.CustomLightPink
    @State var foregroundColor4 = Color.CustomLightPink
    @State var foregroundColor5 = Color.CustomLightPink
    
    @State var liked = false
    
    var body: some View {
        ScrollView {
            VStack(alignment: .center) {
        
                    HStack{
                        VStack {
                            Button(action: {
                                Link("Kung Pao Caudiflower", destination: KungPaoURL)
                            }, label: {
                                Image("1")
                                    .resizable()
                                    .frame(width: 150, height: 150)
                                    .clipShape(RoundedRectangle(cornerRadius: 10.0))
                            })
                            Link("Kung Pao Caudiflower", destination: URL(string: "https://www.foodnetwork.com/recipes/food-network-kitchen/kung-pao-cauliflower-5339620")!)
                        }
                        Button {
                            foregroundColor1 = Color.CustomPaleVioletred
                        } label: {
                            Image(systemName: "heart")
                                .foregroundColor(foregroundColor1)
                        }
                        
                    }
                    HStack{
                        VStack {
                            Button(action: {
                                Link("Fusilli Pasta with Spicy Red Tomatoe Sauce", destination: URL(string: "https://themodernproper.com/fusilli-pasta-with-spicy-tomato-sauce")!)
                            }, label: {
                                Image("2")
                                    .resizable()
                                    .frame(width: 150, height: 150)
                                    .clipShape(RoundedRectangle(cornerRadius: 10.0))
                            })
                            
                            Link("Brocolli Cheddar Soup", destination: URL(string: "https://themodernproper.com/broccoli-cheddar-soup")!)
                        }
                        VStack {
                            Button(action: {
                                Link("7 Layer Dip", destination: SevenLayerURL)
                            }, label: {
                                Image("4")
                                    .resizable()
                                    .frame(width: 150, height: 150)
                                    .clipShape(RoundedRectangle(cornerRadius: 10.0))
                            })
                            
                            Link("7 Layer Dip", destination: URL(string: "https://themodernproper.com/seven-layer-dip")!)
                        }
                    }
                    HStack {
                        VStack {
                            Button(action: {
                                Link("Creamy Cavatappi", destination: URL(string: "https://themodernproper.com/creamy-cavatappi")!)
                            }, label: {
                                Image("5")
                                    .resizable()
                                    .frame(width: 150, height: 150)
                                    .clipShape(RoundedRectangle(cornerRadius: 10.0))
                            })
                            
                            Link("Fusilli Pasta with Spicy Red Tomatoe Sauce", destination: URL(string: "https://themodernproper.com/fusilli-pasta-with-spicy-tomato-sauce")!)
                        }
                        Button {
                            foregroundColor2 = Color.CustomPaleVioletred
                        } label: {
                            Image(systemName: "heart")
                                .foregroundColor(foregroundColor2)
                        }
                    }
                    HStack {
                        HStack{
                            VStack {
                                Button(action: {
                                    Link("Brocolli Cheddar Soup", destination: BrocolliURL)
                                }, label: {
                                    Image("3")
                                        .resizable()
                                        .frame(width: 150, height: 150)
                                        .clipShape(RoundedRectangle(cornerRadius: 10.0))
                                })
                                
                                Link("Brocolli Cheddar Soup", destination: URL(string: "https://themodernproper.com/broccoli-cheddar-soup")!)
                            }
                            Button {
                                foregroundColor3 = Color.CustomPaleVioletred
                            } label: {
                                Image(systemName: "heart")
                                    .foregroundColor(foregroundColor3)
                            }
                        }
                        HStack{
                            VStack {
                                Button(action: {
                                    Link("7 Layer Dip", destination: SevenLayerURL)
                                }, label: {
                                    Image("4")
                                        .resizable()
                                        .frame(width: 150, height: 150)
                                        .clipShape(RoundedRectangle(cornerRadius: 10.0))
                                })
                                
                                Link("7 Layer Dip", destination: URL(string: "https://themodernproper.com/seven-layer-dip")!)
                            }
                        }
                        Button {
                            foregroundColor4 = Color.CustomPaleVioletred
                        } label: {
                            Image(systemName: "heart")
                                .foregroundColor(foregroundColor4)
                        }
                    }
                    HStack {
                        HStack{
                            VStack {
                                Button(action: {
                                    Link("Creamy Cavatappi", destination: URL(string: "https://themodernproper.com/creamy-cavatappi")!)
                                }, label: {
                                    Image("5")
                                        .resizable()
                                        .frame(width: 150, height: 150)
                                        .clipShape(RoundedRectangle(cornerRadius: 10.0))
                                })
                                Link("Creamy Cavatappi", destination: URL(string: "https://themodernproper.com/creamy-cavatappi")!)
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
        }
    }

extension Color {
    static let CustomLightPink = Color (red: 255/255, green: 192/255, blue: 203/255)
}
extension Color {
    static let CustomPaleVioletred = Color (red: 219/255, green: 112/255, blue: 147/255)
}

