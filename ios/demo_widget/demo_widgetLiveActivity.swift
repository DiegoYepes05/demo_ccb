//
//  demo_widgetLiveActivity.swift
//  demo_widget
//
//  Created by Diego Yepes on 12/10/24.
//

import ActivityKit
import WidgetKit
import SwiftUI

struct demo_widgetAttributes: ActivityAttributes {
    public struct ContentState: Codable, Hashable {
        // Dynamic stateful properties about your activity go here!
        var emoji: String
    }

    // Fixed non-changing properties about your activity go here!
    var name: String
}

struct demo_widgetLiveActivity: Widget {
    var body: some WidgetConfiguration {
        ActivityConfiguration(for: demo_widgetAttributes.self) { context in
            // Lock screen/banner UI goes here
            VStack {
                Text("Hello \(context.state.emoji)")
            }
            .activityBackgroundTint(Color.cyan)
            .activitySystemActionForegroundColor(Color.black)

        } dynamicIsland: { context in
            DynamicIsland {
                // Expanded UI goes here.  Compose the expanded UI through
                // various regions, like leading/trailing/center/bottom
                DynamicIslandExpandedRegion(.leading) {
                    Text("Leading")
                }
                DynamicIslandExpandedRegion(.trailing) {
                    Text("Trailing")
                }
                DynamicIslandExpandedRegion(.bottom) {
                    Text("Bottom \(context.state.emoji)")
                    // more content
                }
            } compactLeading: {
                Text("L")
            } compactTrailing: {
                Text("T \(context.state.emoji)")
            } minimal: {
                Text(context.state.emoji)
            }
            .widgetURL(URL(string: "http://www.apple.com"))
            .keylineTint(Color.red)
        }
    }
}

extension demo_widgetAttributes {
    fileprivate static var preview: demo_widgetAttributes {
        demo_widgetAttributes(name: "World")
    }
}

extension demo_widgetAttributes.ContentState {
    fileprivate static var smiley: demo_widgetAttributes.ContentState {
        demo_widgetAttributes.ContentState(emoji: "😀")
     }
     
     fileprivate static var starEyes: demo_widgetAttributes.ContentState {
         demo_widgetAttributes.ContentState(emoji: "🤩")
     }
}

#Preview("Notification", as: .content, using: demo_widgetAttributes.preview) {
   demo_widgetLiveActivity()
} contentStates: {
    demo_widgetAttributes.ContentState.smiley
    demo_widgetAttributes.ContentState.starEyes
}
