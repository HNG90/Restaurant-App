//
//  GalleryView.swift
//  Restaurant
//
//  Created by Hiren Gandhi on 8/2/23.
//

import SwiftUI

struct GalleryView: View {
    
    @State var photoData = [String]()
    @State var sheetVisible = false
    @State var selectedImage = ""
    var dataService = DataService()
    
    var body: some View {
        
        VStack (alignment: .leading){
            
            Text("Gallery")
                .font(.largeTitle)
                .bold()
            //GeometryReader reads the screen measurement of the device
            GeometryReader { proxy in
                ScrollView(showsIndicators: true) {
                    //spacing is for in between columns and also for the rows
                    LazyVGrid(columns: [GridItem(spacing: 10), GridItem(spacing: 10), GridItem(spacing: 10)], spacing: 10) {
                        ForEach(photoData, id: \.self) { p in
                            Image(p)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                            //we minus 20 because there is 2 10 space in this grid, thus divide by 3
                                .frame(maxWidth: (proxy.size.width-20)/3)
                                .clipped()
                                .onTapGesture {
                                    selectedImage = p //to capture the image that was tapped
                                    sheetVisible = true //opens a medium overlay to show what image was tapped
                                }
                        }
                    }
                }
            }
        }
        .padding(.horizontal)
        .onAppear {
            photoData = dataService.getPhotos()
        }
        .sheet(isPresented: $sheetVisible) {
            PhotoView(selectedImage: $selectedImage,
                      sheetVisible: $sheetVisible) //this is what will show when a image is tapped, it will show the selected image because it is bound to PhotoView, which actually shows the tapped image. The second binding allows a way to close the sheet via a button
        }
    }
}

struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView()
    }
}
