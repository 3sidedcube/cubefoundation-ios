//
//  Lottie.swift
//  CubeFoundation
//
//  Created by Sam Davis on 04/01/2023.
//  Copyright © 2023 3 SIDED CUBE. All rights reserved.
//

#if canImport(Lottie)

import SwiftUI
import Lottie

// MARK: - Lottie

/// A `UIViewRepresentable` that shows a Lottie animation
public struct Lottie: UIViewRepresentable {

    /// Name of the lottie file
    var name: Name

    /// The content mode of the lottie animation
    var contentMode: UIView.ContentMode

    /// Loop mode of the lottie animation
    var loopMode: LottieLoopMode = .playOnce

    private var animationView = LottieAnimationView()

    func makeUIView(context: UIViewRepresentableContext<Lottie>) -> UIView {
        let view = UIView(frame: .zero)

        animationView.animation = Animation.named(name.string)
        animationView.contentMode = contentMode
        animationView.loopMode = loopMode
        animationView.play(completion: { animationView.isHidden = $0 })

        animationView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(animationView)

        NSLayoutConstraint.activate([
            animationView.heightAnchor.constraint(equalTo: view.heightAnchor),
            animationView.widthAnchor.constraint(equalTo: view.widthAnchor)
        ])

        return view
    }

    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<Lottie>) {}
}

#endif
