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
    public var name: Name

    /// The content mode of the lottie animation
    public var contentMode: UIView.ContentMode

    /// Loop mode of the lottie animation
    public var loopMode: LottieLoopMode

    /// Whether this view should hide upon completion
    public var hideOnCompletion: Bool

    public init(
        _ name: Name,
        contentMode: UIView.ContentMode = .scaleAspectFit,
        loopMode: LottieLoopMode = .playOnce,
        hideOnCompletion: Bool = false
    )

    private var animationView = LottieAnimationView()

    public func makeUIView(
        context: UIViewRepresentableContext<Lottie>
    ) -> UIView {
        let view = UIView(frame: .zero)

        animationView.animation = LottieAnimation.named(name.string)
        animationView.contentMode = contentMode
        animationView.loopMode = loopMode
        animationView.play { complete in
            guard hideOnCompletion else { return }
            animationView.isHidden = complete
        }

        view.addSubview(animationView)

        animationView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            animationView.heightAnchor.constraint(equalTo: view.heightAnchor),
            animationView.widthAnchor.constraint(equalTo: view.widthAnchor)
        ])

        return view
    }

    public func updateUIView(
        _ uiView: UIView,
        context: UIViewRepresentableContext<Lottie>
    ) {}
}

#endif
