//
//  MaxWidthAndFrame.swift
//  SwiftUI Handbook
//
//  Created by The Ch8sers Inc. on 7/11/22.
//

import SwiftUI

struct MaxWidthAndFrame: View {
    var body: some View {
        VStack {
            Rectangle().fill(Color.blue)
        }
        .overlay(
            Image(systemName: "xmark")
            .frame(width: 32, height: 32)
            .background(Circle().stroke())
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
            .padding())
          
    }
}

struct MaxWidthAndFrame_Previews: PreviewProvider {
    static var previews: some View {
        MaxWidthAndFrame()
    }
}
