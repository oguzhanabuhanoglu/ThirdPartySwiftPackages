//
//  SDWebImageBootcamp.swift
//  SPM'sAndSDK'sBootcamp
//
//  Created by Oğuzhan Abuhanoğlu on 17.10.2024.
//

// Explanation
/*
 SDWebImageSwiftUI is a SwiftUI image loading framework, which based on SDWebImage.

 It brings all your favorite features from SDWebImage, like async image loading, memory/disk caching, animated image playback and performances.

 The framework provide the different View structs, which API match the SwiftUI framework guideline. If you're familiar with Image, you'll find it easy to use WebImage and AnimatedImage.
 */

import SwiftUI
import SDWebImageSwiftUI

struct SDWebImageLoader: View {
    
    let url: String
    let contentMode: ContentMode = .fill
    
    var body: some View {
        WebImage(url: URL(string: url))
            .onSuccess { Image, data, cacheType in
                //
            }
            .onFailure { error in
                //
            }
            .resizable()
            .aspectRatio(contentMode: contentMode)
            
    }
}

struct SDWebImageBootcamp: View {
    var body: some View {
        ImageLoader(url: "https://picsum.photos/id/237/200/300", contentMode: .fill)
            .frame(width: 200, height: 200)
            .onAppear {
//                ImagePrefetcher.instance.startPrefetching(urls: <#T##[URL]#>)
            }
    }
}

#Preview {
    SDWebImageBootcamp()
}
