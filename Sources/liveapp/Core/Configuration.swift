//
//  Configuration.swift
//  
//
//  Created by Joseph Hinkle on 4/5/21.
//

import SwiftUI

extension LiveApp {
    /// Configuration for Live App behavior. You should only set variables here one time and BEFOR you run `LiveApp.setup(...)`.
    public final class Configuration {
        /*
        #if PRODUCTION
        /// Dictates how often live views will automatically update. We recommend setting automatic refresh to "never" in debug builds to prevent unwanted refreshes. Production builds can also set automatic refreshes to "never" and manually trigger refreshes with "LiveView.refreshAll()" or on individual views with "ExampleLiveView.refresh()".
        public static var automaticallyRefresh: AutomaticRefreshLogic = .every(hours: 1)
        #else
        /// Dictates how often live views will automatically update. We recommend setting automatic refresh to "never" in debug builds to prevent unwanted refreshes. Production builds can also set automatic refreshes to "never" and manually trigger refreshes with "LiveView.refreshAll()" or on individual views with "ExampleLiveView.refresh()".
        public static var automaticallyRefresh: AutomaticRefreshLogic = .never
        #endif
        
        #if PRODUCTION
        /// Dictates the default way live views will upgrade themselves from one version to another. We recommend setting users to see updated views "onNextOnAppear" in production. This leads to a less jarring user experience. But it is useful to see the change happen the moment a new live view is updated in development for visual conformation that the system is working. Individual live views can override this default behavior.
        public static var defaultUpgradeLogic: UpgradeLogic = .onNextOnAppear
        #else
        /// Dictates the default way live views will upgrade themselves from one version to another. We recommend setting users to see updated views "onNextOnAppear" in production. This leads to a less jarring user experience. But it is useful to see the change happen the moment a new live view is updated in development for visual conformation that the system is working. Individual live views can override this default behavior.
        public static var defaultUpgradeLogic: UpgradeLogic = .immediately(animate: true)
        #endif
        
        #if INCLUDE_DEVELOPER_TOOLS
        /// If you set this to false, you will no longer recieve any unprompted popups (setup, license, or demo notication popups). The UI will be suitable to put into production. You can also hide all developer messages building for release (and therefore without the `INCLUDE_DEVELOPER_TOOLS` compiler flag).
        public static var showDeveloperMessages = true
        #endif
         */
    }
    
    #if INCLUDE_DEVELOPER_TOOLS
    static var outlineInterpretedViewsColor: Color? = nil
    static var outlineCompiledViewsColor: Color? = nil
    /// This will put an outline around all interpreted views and another color around live views which are defaulting to their compiled Swift bodies (usually as a backup or when there's no remote view to be downloaded). Only available if the `INCLUDE_DEVELOPER_TOOLS` compiler flag is present.
    ///
    /// ```
    /// #if DEBUG
    /// LiveApp.outlineInterpretedViews(with: .yellow, andCompiledViewsWith: .red)
    /// #endif
    /// ```
    public static func outlineInterpretedViews(with color: Color, andCompiledViewsWith compiledColor: Color) {
        outlineInterpretedViewsColor = color
        outlineCompiledViewsColor = compiledColor
    }
    #endif
}

