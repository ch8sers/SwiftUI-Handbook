//
//  LazyGridLayout.swift
//  SwiftUI Handbook
//
//  Created by The Ch8sers Inc. on 7/13/22.
//

import SwiftUI

struct LazyGridLayout: View {
    var body: some View {
        ScrollView {
            LazyVGrid(columns: Array(repeating: .init(.flexible(), spacing:16), count: 4), spacing: 16) {
                ForEach(0..<12) { item in
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.blue)
                    .frame(height: 100)
            }
        }
            .padding()
        }
    }
}

struct LazyGridLayout_Previews: PreviewProvider {
    static var previews: some View {
        LazyGridLayout()
    }
}
