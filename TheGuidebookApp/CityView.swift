//
//  ContentView.swift
//  TheGuidebookApp
//
//  Created by Nayana Sharma on 7/10/23.
//

import SwiftUI

struct CityView: View {
   
   @State var cities = [City]()
   //variable holds instance of city
   
   var dataService = DataService()
   //variable holds instance DataService()
   
   var body: some View
   {
       NavigationStack
       {
           ScrollView (showsIndicators: false){
               VStack{
                   
                   ForEach(cities) { city in
                       //Use ForEach to go thru each city
                       NavigationLink{
                           AttractionView(city: city)
                       } label: {
                           CityCard(city: city)
                               .padding(.bottom, 20)
                       }
                   }
                   
               }
               
           }
           .padding(.horizontal) //add padding
       }
       .ignoresSafeArea()
       .onAppear {
           cities = dataService.getFileData()
       }
       
   }
}

struct CityView_Previews: PreviewProvider {
   static var previews: some View {
       CityView()
   }
}
