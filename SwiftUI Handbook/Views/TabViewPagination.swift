//
//  TabViewPagination.swift
//  SwiftUI Handbook
//
//  Created by The Ch8sers Inc. on 7/11/22.
//


import SwiftUI

// Good for Splash/Intro

struct TabViewPagination: View {
    var body: some View {
        TabView {
            RoundedRectangle(cornerRadius: 30)
                .fill(Color.blue)
            .padding()
            
            RoundedRectangle(cornerRadius: 30)
                .fill(Color.red)
            .padding()
            
            RoundedRectangle(cornerRadius: 30)
                .fill(Color.purple)
            .padding()
            
            RoundedRectangle(cornerRadius: 30)
                .fill(Color.orange)
            .padding()
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
    }
}

struct TabViewPagination_Previews: PreviewProvider {
    static var previews: some View {
        TabViewPagination()
    }
}
