//
//  ImageView.swift
//  SwiftUI Handbook
//
//  Created by The Ch8sers Inc. on 7/11/22.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        VStack {
            Image("Illustration")
                .resizable()
                .aspectRatio(contentMode: .fit)
            .frame(width: 200, height: 200, alignment: .center)
            
            Image("Illustration")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
        }
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
