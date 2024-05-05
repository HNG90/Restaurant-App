//
//  PhotoView.swift
//  Restaurant
//
//  Created by Hiren Gandhi on 8/23/23.
//

import SwiftUI

struct PhotoView: View {
    
    @Binding var selectedImage: String
    @Binding var sheetVisible: Bool
    
    var body: some View {
        
        ZStack{
            Image(selectedImage)
                .resizable()
                .aspectRatio(contentMode: .fit)
            //using the different stack views and spacers, the exit button can be placed in the top right, which closes the sheet
            VStack{
                HStack{
                    Spacer()
                    Button {
                        sheetVisible = false
                    } label: {
                        Image(systemName: "x.circle")
                            .scaleEffect(2) //make the icon bigger
                            .foregroundColor(.black)
                    }
                    .padding()
                }
                Spacer()
            }
            
        }
    }
}

struct PhotoView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoView(selectedImage: Binding.constant("gallery2"),
                  sheetVisible: Binding.constant(true))
    }
}
