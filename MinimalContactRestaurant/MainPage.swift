//
//  MainPage.swift
//  MinimalContactRestaurant
//
//  Created by John McCants on 8/20/22.
//

import SwiftUI

struct MainPage: View {
 
    @State private var showingSheet = false
    @ObservedObject private var RestaurantObject = RestaurantAPI()
    
    var body: some View {
        
        VStack {
            HStack {
                Text("Welcome, John!")
                    .font(.system(size: 36, weight: .semibold))
                    .padding(20)
                
                Spacer()
                Button(action: {
                    showingSheet.toggle()
                })
                {
                    Label("", systemImage: gridImage)
                        .font(.system(size: 36))
                }
                .sheet(isPresented: $showingSheet) {
                    Onboarding()
                }
                
                
            }
            ScrollView {
                ForEach(RestaurantObject.restaurants) { restaurant in
                    RestaurantView(restaurant: restaurant)
                }
            }
          
        }
        
    }
}

struct MainPage_Previews: PreviewProvider {
    static var previews: some View {
        MainPage()
    }
}
