//
//  ColorLiteral.swift
//  SwiftUI Handbook
//
//  Created by The Ch8sers Inc. on 7/11/22.
//

import SwiftUI

struct ColorLiteral: View {
    var body: some View {
        VStack {
            Text("Color Literal")
                .font(.title).bold()
                .foregroundColor(Color(.purple))
        }
        .frame(width: 300, height: 200)
        .background(Image(uiImage: #imageLiteral(resourceName: "gradient")).resizable().aspectRatio(contentMode: .fill))
        .cornerRadius(20)
    }
}

struct ColorLiteral_Previews: PreviewProvider {
    static var previews: some View {
        ColorLiteral()
    }
}
