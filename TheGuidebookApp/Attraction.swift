//
//  Attraction.swift
//  TheGuidebookApp
//
//  Created by Nayana Sharma on 7/10/23.
//

import Foundation

struct Attraction: Identifiable, Decodable

{
    let id = UUID()
    var name: String
    var summary: String
    var longDescription: String
    var imageName: String
    var latLong: String
    
    
}
