//
//  Link.swift
//  SwiftUI Handbook
//
//  Created by The Ch8sers Inc. on 7/13/22.
//

import SwiftUI

struct LinkHB: View {
    var body: some View {
        Link(destination: URL(string: "https://designcode.io")!) {
            Image(systemName: "link")
                .frame(width: 32, height: 32)
                .background(Color.blue)
                .mask(Circle())
                .foregroundColor(.white)
        }
    }
}

struct Link_Previews: PreviewProvider {
    static var previews: some View {
        LinkHB()
    }
}
