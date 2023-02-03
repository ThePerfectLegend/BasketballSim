//
//  GameWidgetLiveActivity.swift
//  GameWidget
//
//  Created by Nizami Tagiyev on 01.02.2023.
//

import ActivityKit
import WidgetKit
import SwiftUI

struct GameLiveActivity: Widget {
    var body: some WidgetConfiguration {
        ActivityConfiguration(for: GameAttributes.self) { context in
            // Lock screen/banner UI goes here
            LiveActivityView(context: context)
            
        } dynamicIsland: { context in
            DynamicIsland {
                // Expanded UI goes here.  Compose the expanded UI through
                // various regions, like leading/trailing/center/bottom
                DynamicIslandExpandedRegion(.leading) {
                    HStack {
                        Image(context.attributes.homeTeam)
                            .teamLogoModifier(frame: 40)
                        Text("\(context.state.gameState.homeScore)")
                            .font(.title.weight(.semibold))
                    }
                }
                DynamicIslandExpandedRegion(.trailing) {
                    HStack {
                        Text("\(context.state.gameState.awayScore)")
                            .font(.title.weight(.semibold))
                        Image(context.attributes.awayTeam)
                            .teamLogoModifier(frame: 40)
                    }
                }
                DynamicIslandExpandedRegion(.bottom) {
                    HStack {
                        Image(context.state.gameState.scoringTeamName)
                            .teamLogoModifier(frame: 20)
                        Text(context.state.gameState.lastAction)
                            .font(.callout)
                            .foregroundColor(.white.opacity(0.9))
                    }
                }
            } compactLeading: {
                HStack {
                    Image(context.attributes.homeTeam)
                        .teamLogoModifier()
                    Text("\(context.state.gameState.homeScore)")
                        .fontWeight(.semibold)
                }
            } compactTrailing: {
                HStack {
                    Text("\(context.state.gameState.awayScore)")
                        .fontWeight(.semibold)
                    Image(context.attributes.awayTeam)
                        .teamLogoModifier()
                }
            } minimal: {
                Image(context.state.gameState.winningTeamName)
                    .teamLogoModifier()
            }
            .widgetURL(URL(string: "http://www.apple.com"))
            .keylineTint(Color.red)
        }
    }
}
