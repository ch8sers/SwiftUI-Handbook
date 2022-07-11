//
//  TextView.swift
//  SwiftUI Handbook
//
//  Created by The Ch8sers Inc. on 7/11/22.
//

import SwiftUI

struct TextView: View {
    var body: some View {
        Text("Text in SwiftUI is a view that lets you display one or more lines of text. This is suitable for read-only information that's not editable. To display a line of text, you initialize Text and set a String value.")
            .font(.system(size: 28, weight: .bold, design: .rounded))
            .foregroundColor(.blue)
            .frame(width: 300, alignment: .leading)
            .multilineTextAlignment(.center)
            .lineLimit(3)
            .lineSpacing(10.0)
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView()
    }
}
