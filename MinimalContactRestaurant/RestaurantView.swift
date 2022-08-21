//
//  RestaurantView.swift
//  MinimalContactRestaurant
//
//  Created by John McCants on 8/21/22.
//

import SwiftUI

struct RestaurantView: View {
    let restaurant: Restaurant
    var body: some View {
        VStack {
            HStack {
                VStack {
                    Text(restaurant.businessname.capitalized)
                        .lineLimit(1)
            
                }
                .padding(.leading, 20)
                .frame(width: 200)
                Spacer()
                .padding(.leading, 20)
                .font(.system(size: 16, weight: .semibold))
                VStack {
                    AsyncImage(
                        url: URL(string:restaurant.image),
                        content: { image in
                            image.resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(maxWidth: 100, maxHeight: 50)
                        },
                        placeholder: {
                            ProgressView()
                        }
                    )
                    .padding(.trailing, 20)
                }
            }
            Divider()
                .frame(width: 200)
            
            
            
        }
        
        
       
        
    }
}

