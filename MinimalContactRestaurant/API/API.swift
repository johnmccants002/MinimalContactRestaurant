//
//  API.swift
//  MinimalContactRestaurant
//
//  Created by John McCants on 8/20/22.
//

import Foundation

let headers = [
    "content-type": "application/json"
]

class RestaurantAPI: ObservableObject{
    
    @Published var restaurants = [Restaurant]()
    
    init() {
        getData()
    }
    
    func getData() {
        
        
        let request = NSMutableURLRequest(url: NSURL(string: "https://foodbukka.herokuapp.com/api/v1/restaurant/")! as URL,
                                          cachePolicy: .useProtocolCachePolicy,
                                          timeoutInterval: 10.0)
        request.httpMethod = "GET"
        request.allHTTPHeaderFields = headers
        
        
        let session = URLSession.shared
        
            
            let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
                DispatchQueue.main.async {
                    if let data = data {
                        do {
                            let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any]
                            let result = json?["Result"] as? [[String: Any]]
                            var fetchedRestaurants = [Restaurant]()
                            if let result = result {
                                for dict in result {
                                    let restaurant = Restaurant(dict: dict)
                                    fetchedRestaurants.append(restaurant)
                                }
                            }
                            
                            
                            self.restaurants = fetchedRestaurants
                            
                            
                        } catch let error as NSError {
                            print("Failed to get data: ", error.localizedDescription)
                        }
                        
                    }
                }
            })
        
        
        
        
        
        dataTask.resume()
        
        
        
    }
    
    
}





