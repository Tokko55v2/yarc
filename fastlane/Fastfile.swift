// This file contains the fastlane.tools configuration
// You can find the documentation at https://docs.fastlane.tools
//
// For a list of all available actions, check out
//
//     https://docs.fastlane.tools/actions
//

import Foundation

class Fastfile: LaneFile {
    // add actions here: https://docs.fastlane.tools/actions    
    func swiftLintLane() {
        desc("Run SwiftLint")
        swiftlint(configFile: "app/.swiftlint.yml",
                  strict: true,
                  ignoreExitStatus: false,
                  raiseIfSwiftlintError: true,
                  executable: "Pods/SwiftLint/swiftlint")
    }
}
