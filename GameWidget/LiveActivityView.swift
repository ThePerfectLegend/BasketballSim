//
//  LiveActivityView.swift
//  GameWidgetExtension
//
//  Created by Nizami Tagiyev on 01.02.2023.
//

import SwiftUI
import WidgetKit

struct LiveActivityView: View {
    var body: some View {
        ZStack {
            Image("activity-background")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .overlay {
                    ContainerRelativeShape()
                        .fill(.black.opacity(0.25).gradient)
                }
            VStack(spacing: 12) {
                HStack {
                    Image("warriors")
                        .teamLogoModifier(frame: 44)
                    Text("125")
                        .font(.system(size: 40, weight: .semibold))
                        .foregroundColor(.white.opacity(0.9))
                    Spacer()
                    Text("115")
                        .font(.system(size: 40, weight: .semibold))
                        .foregroundColor(.black.opacity(0.75))
                    Image("bulls")
                        .teamLogoModifier(frame: 44)
                }
                HStack {
                    Image("bulls")
                        .teamLogoModifier(frame: 20)
                    Text("S. Currry drains a 3")
                        .font(.callout)
                        .foregroundColor(.white.opacity(0.9))
                }
            }
            .padding()
        }
    }
}

struct LiveActivityView_Previews: PreviewProvider {
    static var previews: some View {
        LiveActivityView()
    }
}
