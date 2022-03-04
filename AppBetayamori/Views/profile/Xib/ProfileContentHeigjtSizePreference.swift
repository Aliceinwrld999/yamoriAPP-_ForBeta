//
//  ProfileContentHeigjtSizePreference.swift
//  YamoriApp#1 2022
//
//  Created by 高橋良汰 on 2022/02/10.
//

import SwiftUI

struct ProfileContentHeightPreference: PreferenceKey {
//    typealias Value = Bool

    static var defaultValue: CGFloat = 500

    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}
