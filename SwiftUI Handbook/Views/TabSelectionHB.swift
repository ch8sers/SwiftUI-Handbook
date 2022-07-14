//
//  TabSelectionHB.swift
//  SwiftUI Handbook
//
//  Created by The Ch8sers Inc. on 7/14/22.
//

import SwiftUI

struct TabSelectionHB: View {
    @State var tabSelection = 1
    
    var body: some View {
        TabView(selection: $tabSelection) {
            ContentView(tabSelection: $tabSelection)
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")}
                .tag(1)
            
            Horizontal3DScroll()
                .tabItem {
                    Image(systemName: "aqi.medium")
                    Text("Settings")
                }
                .tag(2)
                
        }
    }
}

struct TabSelectionHB_Previews: PreviewProvider {
    static var previews: some View {
        TabSelectionHB()
    }
}
