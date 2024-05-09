//
//  FoodView.swift
//  HealthyHabits
//
//  Created by Nicole Park on 5/3/24.
//

import SwiftUI
import WebKit

struct FoodView: View {
    // 1
    @State private var isPresentWebView = false

    
    var body: some View {
        Button("Open WebView") {
            // 2
            isPresentWebView = true

        }
        .sheet(isPresented: $isPresentWebView) {
            NavigationStack {
                // 3
                WebView(url: URL(string: "https://www.delish.com/cooking/recipe-ideas/g3733/healthy-dinner-recipes/
")!)

                    .ignoresSafeArea()
                    .navigationTitle("Sarunw")
                    .navigationBarTitleDisplayMode(.inline)
                                 
                                 
                                 let url: URL
                                 func makeUIView(context: Context) -> WKWebView {
                                     return WKWebView()
                                 }
                                 func updateUIView(_ webView: WKWebView, context: Context) {
                                     
                                     let request = URLRequest(url: url)
                                     webView.load(request)
                                 }
            }
        }
    }
}
