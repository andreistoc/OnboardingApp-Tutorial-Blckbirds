//
//  Helper.swift
//  OnboardingApp
//
//  Created by Andrei Istoc on 20.02.2021.
//

import Foundation

struct SubviewModel: Identifiable {
    let imageString: String
    let title: String
    let caption: String
    let id = UUID()
    let tag: Tab
}

enum Tab: Hashable {
    case meditating
    case running
    case walking
}

let subviewData = [
    SubviewModel(imageString: "meditating", title: "Take some time out", caption: "Take your time out and bring awareness into your everyday life", tag: .meditating),
    SubviewModel(imageString: "running", title: "Conquer personal hindrances", caption: "Meditating helps you dealing with anxiety and bringing calmness into your life", tag: .running),
    SubviewModel(imageString: "walking", title: "Create a peaceful mind", caption: "Regular meditation sessions create a peaceful inner mind", tag: .walking)
]


