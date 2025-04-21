//
//  MyWidgetBundle.swift
//  MyWidget
//
//  Created by Robert Wan on 19/4/2025.
//

import WidgetKit
import SwiftUI

@main
struct MyWidgetBundle: WidgetBundle {
    var body: some Widget {
        MyWidget()
        MyWidgetControl()
        MyWidgetLiveActivity()
    }
}
