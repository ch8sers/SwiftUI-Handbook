//
//  LazyStack.swift
//  SwiftUI Handbook
//
//  Created by The Ch8sers Inc. on 7/13/22.
//

import SwiftUI

struct LazyStack: View {
    var body: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 160))]) {
                ForEach(0 ..< 10000) { item in
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.white)
                        .frame(height: 100)
                        .shadow(radius: 100)
                }
            }
        }
    }
}

struct LazyStack_Previews: PreviewProvider {
    static var previews: some View {
        LazyStack()
    }
}
