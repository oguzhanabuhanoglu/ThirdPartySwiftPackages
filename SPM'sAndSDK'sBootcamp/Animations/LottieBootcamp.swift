//
//  LottieBootcamp.swift
//  SPM'sAndSDK'sBootcamp
//
//  Created by Oğuzhan Abuhanoğlu on 18.10.2024.
//

import SwiftUI
import Lottie

struct LottieHelperView: View {
    
    var fileName: String = "BatmanAnimation"
    var contentMode: UIView.ContentMode = .scaleAspectFit
    var playmode: LottieLoopMode = .playOnce
    var onAnimationDidFinish: (() -> Void)? = nil
    
    var body: some View {
        LottieView(animation: .named(fileName))
            .configure({ LottieAnimationView in
                LottieAnimationView.contentMode = contentMode
            })
            .playbackMode(.playing(.toProgress(1, loopMode: playmode)))
            .animationDidFinish { completed in
                onAnimationDidFinish
            }
    }
}

#Preview {
    LottieHelperView()
}
