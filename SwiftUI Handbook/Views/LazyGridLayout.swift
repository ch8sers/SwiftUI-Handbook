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
            LazyVGrid(columns: [
                GridItem(.fixed(80), spacing: 16),
                GridItem(.fixed(160), spacing: 16),
                GridItem(.fixed(100), spacing: 16)
            ], spacing: 16) {
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
