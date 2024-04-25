//
//  ContentView.swift
//  JPApexPredetors17
//
//  Created by Oguz Colak on 25.04.2024.
//

import SwiftUI

struct ContentView: View {
    let predators = Predators()
    var body: some View {
        List(predators.apexPredators) {predator in
            HStack{
                // dinasour image
                Image(predator.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .shadow(color: .white, radius: 3)
                
                VStack(alignment:.leading){
                    //name
                    Text(predator.name)
                        .fontWeight(.bold)
                    // type
                    Text(predator.type.rawValue.capitalized)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .padding(.horizontal,13)
                        .padding(.vertical,5)
                        .background(predator.type.background)
                        .clipShape(.capsule)
                    
                }
                
            }
        }
        .preferredColorScheme(.dark)
        
    }
}

#Preview {
    ContentView()
}
