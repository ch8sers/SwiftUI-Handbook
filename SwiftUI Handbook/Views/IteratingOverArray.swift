//
//  IteratingOverArray.swift
//  SwiftUI Handbook
//
//  Created by The Ch8sers Inc. on 7/14/22.
//

import SwiftUI

struct IteratingOverArray: View {
    var authors = ["Meng To", "Surya Anand", "Stephanie Diep"]
    var body: some View {
        VStack {
            ForEach(authors, id: \.self) { author in
                Text("\(author)")
            }
        }
        
        .onAppear {
            iterateOverAuthor(authors: authors)
        }
    }
    
    func iterateOverAuthor(authors: [String]) {
        for (index, author) in authors.enumerated() {
            print("\(index) - \(author)")
        }
        
    }
}

struct IteratingOverArray_Previews: PreviewProvider {
    static var previews: some View {
        IteratingOverArray()
    }
}
