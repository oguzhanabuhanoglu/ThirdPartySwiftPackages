//
//  ImageLoader.swift
//  SPM'sAndSDK'sBootcamp
//
//  Created by Oğuzhan Abuhanoğlu on 17.10.2024.
//

import SwiftUI

struct ImageLoader: View {
    let url: String
    var contentMode: ContentMode = .fill
    
    var body: some View {
//        SDWebImageLoader(url: url)
        KingFisherImageLoader(url: url)
    }
}

#Preview {
    ImageLoader(url: "https://picsum.photos/id/237/200/300" , contentMode: .fill)
        
}
