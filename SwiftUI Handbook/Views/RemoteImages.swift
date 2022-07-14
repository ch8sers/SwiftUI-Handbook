//
//  RemoteImages.swift
//  SwiftUI Handbook
//
//  Created by The Ch8sers Inc. on 7/14/22.
//

import SwiftUI
import SDWebImageSwiftUI

struct RemoteImages: View {
    let myPhotoUrl = URL(string: "https://i.picsum.photos/id/251/200/300.jpg?hmac=9xXOWzHXFkhqJDfiXSZARyy0pDmdAyazrrJw6VNgoKc")
    
    var body: some View {
        WebImage(url: myPhotoUrl)
            .renderingMode(.original)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 100, height: 100)
            .clipShape(Circle())
    }
}

struct RemoteImages_Previews: PreviewProvider {
    static var previews: some View {
        RemoteImages()
    }
}
