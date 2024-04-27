//
//  PredatorDetail.swift
//  JPApexPredetors17
//
//  Created by Oguz Colak on 27.04.2024.
//

import SwiftUI

struct PredatorDetail: View {
    
    let predator : ApexPredator
    var body: some View {
        GeometryReader{ geo in
            ScrollView{
                ZStack(alignment:.bottomTrailing){
                    // backgorund image
                    Image(predator.type.rawValue)
                        .resizable()
                        .scaledToFit()
                    
                    // dino image
                    Image(predator.image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: geo.size.width / 1.5, height: geo.size.height / 3)
                        .scaleEffect(x:-1)
                        .shadow(color: .black, radius:7)
                        .offset(y:20)
                }
                
                // dino name
                
                // current location
                
                // aAppears in
                
                // Movie moments
                
                // Link to web page
            }
            .ignoresSafeArea()
        }
    }
}
#Preview {
    PredatorDetail(predator: Predators().apexPredators[2])
    
}
