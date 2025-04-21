//
//  AppIntent.swift
//  MyWidget
//
//  Created by Robert Wan on 19/4/2025.
//

import WidgetKit
import AppIntents

struct ConfigurationAppIntent: WidgetConfigurationIntent {
    static var title: LocalizedStringResource { "Configuration" }
    static var description: IntentDescription { "This is an example widget." }

    // An example configurable parameter.
    @Parameter(title: "Test Emoji", default: "😃")
    var favoriteEmoji: String
}
