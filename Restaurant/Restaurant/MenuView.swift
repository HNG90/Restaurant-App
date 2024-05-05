//
//  MenuView.swift
//  Restaurant
//
//  Created by Hiren Gandhi on 8/2/23.
//

import SwiftUI

struct MenuView: View {
    
    //array of MenuItem instances created from MenuItem structure feteched via DataService instance
    @State var menuItem:[MenuItem] = [MenuItem]()
    var dataService = DataService()
    
    var body: some View {
        //accepts a data set to display in this case menuItem
        List(menuItem){ item in
            
            MenuListRow(item: item) //calls the view that displays the horizontal views within this list
        }
        .listStyle(.plain)
        .onAppear{
            //fetch data
            menuItem = dataService.getData()
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
