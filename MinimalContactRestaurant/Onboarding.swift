//
//  Onboarding.swift
//  MinimalContactRestaurant
//
//  Created by John McCants on 8/20/22.
//

import SwiftUI

struct Onboarding: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack {
            Text("Minimal Restaurant Contact")
                .font(.system(size: 24, weight: .medium))
                .padding(.top, 40)
                .frame(width: 400, height: 100)
            Image("restaurant")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
            Text("Click on the items in the previous page and see details")
            Spacer()
            
            HStack {
                Button(action: {
                    dismiss()
                }) {
                    
                    HStack {
                        Text("Lets Go!")
                            .font(.system(.title3, weight: .semibold))
                        Image(systemName: "menucard")
                    }
                    .padding(.top, 15)
                    
                }
                .frame(minWidth: 0, maxWidth: .infinity)
                .background(.blue)
                .foregroundColor(.white)
 
            }

        }
    }
}

struct Onboarding_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding()
    }
}
