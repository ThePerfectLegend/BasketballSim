//
//  LiveActivityView.swift
//  GameWidgetExtension
//
//  Created by Nizami Tagiyev on 01.02.2023.
//

import SwiftUI
import WidgetKit

struct LiveActivityView: View {
    let context: ActivityViewContext<GameAttributes>
    
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
                    Image(context.attributes.homeTeam)
                        .teamLogoModifier(frame: 44)
                    Text("\(context.state.gameState.homeScore)")
                        .font(.system(size: 40, weight: .semibold))
                        .foregroundColor(.white.opacity(0.9))
                    Spacer()
                    Text("\(context.state.gameState.awayScore)")
                        .font(.system(size: 40, weight: .semibold))
                        .foregroundColor(.black.opacity(0.75))
                    Image(context.attributes.awayTeam)
                        .teamLogoModifier(frame: 44)
                }
                HStack {
                    Image(context.state.gameState.scoringTeamName)
                        .teamLogoModifier(frame: 20)
                    Text(context.state.gameState.lastAction)
                        .font(.callout)
                        .foregroundColor(.white.opacity(0.9))
                }
            }
            .padding()
        }
    }
}
