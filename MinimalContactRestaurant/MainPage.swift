//
//  MainPage.swift
//  MinimalContactRestaurant
//
//  Created by John McCants on 8/20/22.
//

import SwiftUI

struct MainPage: View {
 
    @State private var showingSheet = false
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
                    Label("", systemImage: "person.fill")
                        .font(.system(size: 36))
                }
                .sheet(isPresented: $showingSheet) {
                    Onboarding()
                }
                
                
            }
            Spacer()
        }
        
    }
}

struct MainPage_Previews: PreviewProvider {
    static var previews: some View {
        MainPage()
    }
}
