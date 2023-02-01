//
//  GameWidgetBundle.swift
//  GameWidget
//
//  Created by Nizami Tagiyev on 01.02.2023.
//

import WidgetKit
import SwiftUI

@main
struct GameWidgetBundle: WidgetBundle {
    var body: some Widget {
        GameWidget()
        if #available(iOS 16.1, *) {
            GameLiveActivity()
        }
    }
}
