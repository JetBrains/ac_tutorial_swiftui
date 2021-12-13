//
//  iOSConferencesApp.swift
//  iOSConferences
//
//  Created by jetbrains on 29.10.21.
//
//

import SwiftUI

@main
struct iOSConferencesApp: App {
    init() {
        #if DEBUG
        var injectionBundlePath = "/Applications/InjectionIII.app/Contents/Resources"
        #if targetEnvironment(macCatalyst)
        injectionBundlePath = "\(injectionBundlePath)/macOSInjection.bundle"
        #elseif os(iOS)
        injectionBundlePath = "\(injectionBundlePath)/iOSInjection.bundle"
        #endif
        Bundle(path: injectionBundlePath)?.load()
        #endif
    }
    var body: some Scene {
        WindowGroup {
            ConferenceList()
        }
    }
}
