//
//  SideBar.swift
//  SwiftUI Handbook
//
//  Created by The Ch8sers Inc. on 7/11/22.
//

import SwiftUI

struct SideBar: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: HomeView()) {
                Label("Courses", systemImage: "book")
                }
                
                NavigationLink(destination: TutorialsView()) {
                Label("Tutorials", systemImage: "square")
                }
            }
            .navigationTitle("Learn")
            HomeView()
        }
    }
}

struct SideBar_Previews: PreviewProvider {
    static var previews: some View {
        SideBar()
            .previewInterfaceOrientation(.portraitUpsideDown)
    }
}
