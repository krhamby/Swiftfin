//
 /* 
  * SwiftFin is subject to the terms of the Mozilla Public
  * License, v2.0. If a copy of the MPL was not distributed with this
  * file, you can obtain one at https://mozilla.org/MPL/2.0/.
  *
  * Copyright 2021 Aiden Vigue & Jellyfin Contributors
  */

import Defaults
import Foundation

extension SwiftfinStore {

    enum Defaults {

        static let generalSuite: UserDefaults = {
            return UserDefaults(suiteName: "swiftfinstore-general-defaults")!
        }()
        
        static let universalSuite: UserDefaults = {
            return UserDefaults(suiteName: "swiftfinstore-universal-defaults")!
        }()
    }
}

extension Defaults.Keys {
    
    // Universal settings
    static let defaultHTTPScheme = Key<HTTPScheme>("defaultHTTPScheme", default: .http, suite: SwiftfinStore.Defaults.universalSuite)
    static let appAppearance = Key<AppAppearance>("appAppearance", default: .system, suite: SwiftfinStore.Defaults.universalSuite)
    
    // General settings
    static let lastServerUserID = Defaults.Key<String?>("lastServerUserID", suite: SwiftfinStore.Defaults.generalSuite)
    static let inNetworkBandwidth = Key<Int>("InNetworkBandwidth", default: 40_000_000, suite: SwiftfinStore.Defaults.generalSuite)
    static let outOfNetworkBandwidth = Key<Int>("OutOfNetworkBandwidth", default: 40_000_000, suite: SwiftfinStore.Defaults.generalSuite)
    static let isAutoSelectSubtitles = Key<Bool>("isAutoSelectSubtitles", default: false, suite: SwiftfinStore.Defaults.generalSuite)
    static let autoSelectSubtitlesLangCode = Key<String>("AutoSelectSubtitlesLangCode", default: "Auto", suite: SwiftfinStore.Defaults.generalSuite)
    static let autoSelectAudioLangCode = Key<String>("AutoSelectAudioLangCode", default: "Auto", suite: SwiftfinStore.Defaults.generalSuite)
    
    static let overlayType = Key<OverlayType>("overlayType", default: .normal, suite: SwiftfinStore.Defaults.generalSuite)
    static let gesturesEnabled = Key<Bool>("gesturesEnabled", default: true, suite: SwiftfinStore.Defaults.generalSuite)
    static let videoPlayerJumpForward = Key<VideoPlayerJumpLength>("videoPlayerJumpForward", default: .fifteen, suite: SwiftfinStore.Defaults.generalSuite)
    static let videoPlayerJumpBackward = Key<VideoPlayerJumpLength>("videoPlayerJumpBackward", default: .fifteen, suite: SwiftfinStore.Defaults.generalSuite)
    static let subtitlesEnabledIfDefault = Key<Bool>("subtitlesEnabledIfDefault", default: false, suite: SwiftfinStore.Defaults.generalSuite)
    static let autoplayEnabled = Key<Bool>("autoPlayNextItem", default: true, suite: SwiftfinStore.Defaults.generalSuite)
    
    // Should show video player items
    static let shouldShowPlayPreviousItem = Key<Bool>("shouldShowPreviousItem", default: true, suite: SwiftfinStore.Defaults.generalSuite)
    static let shouldShowPlayNextItem = Key<Bool>("shouldShowNextItem", default: true, suite: SwiftfinStore.Defaults.generalSuite)
    static let shouldShowAutoPlay = Key<Bool>("shouldShowAutoPlayNextItem", default: true, suite: SwiftfinStore.Defaults.generalSuite)
    
    // Experimental settings
    struct Experimental {
        static let syncSubtitleStateWithAdjacent = Key<Bool>("experimental.syncSubtitleState", default: false, suite: SwiftfinStore.Defaults.generalSuite)
    }
}
