//
//  StaticDataHB.swift
//  SwiftUI Handbook
//
//  Created by The Ch8sers Inc. on 7/13/22.
//

import SwiftUI

struct StaticDataHB: View {
    var body: some View {
        List(courses) { item in
            Text(item.title)
                .padding()
                .background(item.color)
                .cornerRadius(10)
        }
    }
}

struct StaticDataHB_Previews: PreviewProvider {
    static var previews: some View {
        StaticDataHB()
    }
}

struct Course: Identifiable {
    var id = UUID()
    var title: String
    var color: Color
}

var courses = [
    Course(title: "SwiftUI", color: Color.blue),
    Course(title: "UI Design", color: Color.red)
]
