//
//  ImagePrefetcher.swift
//  SPM'sAndSDK'sBootcamp
//
//  Created by Oğuzhan Abuhanoğlu on 17.10.2024.
//

/*
 If you know the user is going to get to some screen in the future rather than loading the image when it comes on to the screen first time you can use this logic to preload some of that data.
 */
import Foundation
import SDWebImageSwiftUI

class ImagePrefetcher {
    
    static let instance = ImagePrefetcher()
    private let prefetcher = SDWebImagePrefetcher()
    
    private init() {}
    
    func startPrefetching(urls: [URL]) {
        prefetcher.prefetchURLs(urls)
    }
    
    func stoppedPrefetching() {
        prefetcher.cancelPrefetching()
    }
}
