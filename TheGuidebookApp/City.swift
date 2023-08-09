//
//  City.swift
//  TheGuidebookApp
//
//  Created by Nayana Sharma on 7/10/23.
//

import SwiftUI

struct City: Identifiable, Decodable {
    
    let id = UUID()
    //to differentiate between the cities
    
    //different parts of the view
    var name: String
    var summary: String
    var imageName: String
    
    //when you click on the city
    var attractions: [Attraction]
}
