//
//  KingFisherBootcamp.swift
//  SPM'sAndSDK'sBootcamp
//
//  Created by Oğuzhan Abuhanoğlu on 17.10.2024.
//

/*
 It's basıclly same thing with SDWebImage.
 https://github.com/onevcat/Kingfisher
 */

import SwiftUI
import Kingfisher

struct KingFisherImageLoader: View {
    
    let url: String
    let contentMode: SwiftUI.ContentMode = .fill
    
    var body: some View {
        KFImage(URL(string: url))
            .placeholder({
                Color.gray.opacity(0.3)
            })
            .aspectRatio(contentMode: contentMode)
        
//        KF.url(url)
//          .placeholder(placeholderImage)
//          .setProcessor(processor)
//          .loadDiskFileSynchronously()
//          .cacheMemoryOnly()
//          .fade(duration: 0.25)
//          .lowDataModeSource(.network(lowResolutionURL))
//          .onProgress { receivedSize, totalSize in  }
//          .onSuccess { result in  }
//          .onFailure { error in }
//          .set(to: imageView)
    }
}

#Preview {
    KingFisherImageLoader(url: "https://picsum.photos/id/237/200/300")
        .frame(width: 200, height: 200)
}
