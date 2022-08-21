//
//  Restaurant.swift
//  MinimalContactRestaurant
//
//  Created by John McCants on 8/20/22.
//

import Foundation

//struct Root : Decodable {
//    let restaurants : [Restaurant]
//}
//
//
//struct Restaurant: Decodable {
//    let v: Int?
//    let id, address: String?
//    let averagecost: Int?
//    let businessname, email, foodMenu, restaurantID: String?
//    let image, imageID, location: String?
//    let parkinglot, phone: Int?
//    let restauranttype: String?
//    let reviews: Int?
//    let slug: String?
//
//    private enum CodingKeys: String, CodingKey {
//        case v, id, averagecost, address, businessname, image, imageID, location, email, foodMenu, restaurantID, parkinglot, phone, restauranttype, reviews, slug
//    }
//
//    init(from decoder: Decoder) throws {
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        v = try container.decode(Int.self, forKey: .v)
//        id = try container.decode(String.self, forKey: .id)
//        address = try container.decode(String.self, forKey: .address)
//        averagecost = try container.decode(Int.self, forKey: .averagecost)
//        businessname = try container.decode(String.self, forKey: .businessname)
//        email = try container.decode(String.self, forKey: .email)
//        image = try container.decode(String.self, forKey: .image)
//        imageID = try container.decode(String.self, forKey: .imageID)
//        location = try container.decode(String.self, forKey: .location)
//        parkinglot = try container.decode(Int.self, forKey: .parkinglot)
//        phone = try container.decode(Int.self, forKey: .phone)
//        restauranttype = try container.decode(String.self, forKey: .restauranttype)
//        reviews = try container.decode(Int.self, forKey: .reviews)
//        slug = try container.decode(String.self, forKey: .slug)
//        restaurantID = try container.decode(String.self, forKey: .restaurantID)
//        foodMenu = try container.decode(String.self, forKey: .foodMenu)
//
//    }
//
//}
//
//

// MARK: - Restaurant
struct Restaurant: Identifiable {
    let v: Int
    let id, address: String
    let averagecost: Int
    let businessname, email, foodMenu, restaurantID: String
    let image, imageID, location: String
    let parkinglot, phone: Int
    let restauranttype: String
    let reviews: Int
    let slug: String

    init(dict: [String: Any]) {
        self.v = dict["v"] as? Int ?? 0
        self.id = dict["id"] as? String ?? "id"
        self.address = dict["address"] as? String ?? ""
        self.averagecost = dict["averagecost"] as? Int ?? 10
        self.businessname = dict["businessname"] as? String ?? ""
        self.email = dict["email"] as? String ?? ""
        self.foodMenu = dict["foodMenu"] as? String ?? ""
        self.restaurantID = dict["restaurantID"] as? String ?? ""
        self.image = dict["image"] as? String ?? ""
        self.imageID = dict["imageID"] as? String ?? ""
        self.location = dict["location"] as? String ?? ""
        self.parkinglot = dict["parkinglot"] as? Int ?? 15
        self.phone = dict["phone"] as? Int ?? 123456789
        self.restauranttype = dict["restauranttype"] as? String ?? ""
        self.reviews = dict["reviews"] as? Int ?? 8
        self.slug = dict["slug"] as? String ?? ""
    }
}
