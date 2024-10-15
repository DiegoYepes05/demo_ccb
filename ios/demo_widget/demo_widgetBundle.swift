//
//  demo_widgetBundle.swift
//  demo_widget
//
//  Created by Diego Yepes on 12/10/24.
//

import WidgetKit
import SwiftUI

@main
struct demo_widgetBundle: WidgetBundle {
    var body: some Widget {
        demo_widget()
        demo_widgetControl()
        demo_widgetLiveActivity()
    }
}
