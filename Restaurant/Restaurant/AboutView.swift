//
//  AboutView.swift
//  Restaurant
//
//  Created by Hiren Gandhi on 8/2/23.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        
        //Using ScrollView when we have more content on screen than would otherwise normally fit
        ScrollView {
            VStack (alignment: .leading) {
                
                Text("About")
                    .font(.largeTitle)
                    .bold()
                
                Image("restaurant-inside")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.bottom)
                
                Text("Sukiyabashi Jiro (すきやばし次郎, Sukiyabashi Jirō) is a sushi restaurant in Ginza, Chūō, Tokyo, Japan. It is owned and operated by sushi master Jiro Ono. -Wikipedia")
                
                Image("map")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.bottom)
                //multi-line text, it will place text as it is typed also spacing
                Text("""
    Tsukamoto Sogyo Building
    Basement Floor 1
    2-15, Ginza 4-chome
    Chūō, Tokyo
    Japan
    """)

            }
            .padding(.horizontal) //left and right padding to the VStack
        }
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
