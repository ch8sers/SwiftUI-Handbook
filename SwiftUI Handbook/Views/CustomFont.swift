//
//  CustomFont.swift
//  SwiftUI Handbook
//
//  Created by The Ch8sers Inc. on 7/11/22.
//

import SwiftUI

struct CustomFont: View {
    var body: some View {
        Text("Ch8sers")
            .font(.custom("OpenSans-VariableFont_wdth,wght", size: 34).bold())
    }
}

struct CustomFont_Previews: PreviewProvider {
    static var previews: some View {
        CustomFont()
    }
}
