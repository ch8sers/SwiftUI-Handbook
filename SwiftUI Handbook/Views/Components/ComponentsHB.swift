//
//  ComponentsHB.swift
//  SwiftUI Handbook
//
//  Created by The Ch8sers Inc. on 7/13/22.
//

import SwiftUI

struct ComponentsHB: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Apple Design Resources")
                .font(.largeTitle).bold()
                .frame(maxWidth: .infinity, alignment: .leading)
            Text("Design apps quickly and accurately by using Sketch, Photoshop, and XD templates, guides, and other resources.")
            LargeButton(text: "Sign Up")
            
            Spacer()
        }
        .padding(20)
    }
}

struct ComponentsHB_Previews: PreviewProvider {
    static var previews: some View {
        ComponentsHB()
    }
}

