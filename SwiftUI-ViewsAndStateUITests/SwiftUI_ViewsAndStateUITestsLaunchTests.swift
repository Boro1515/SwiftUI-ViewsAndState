//
//  SwiftUI_ViewsAndStateUITestsLaunchTests.swift
//  SwiftUI-ViewsAndStateUITests
//
//  Created by Zdeněk Borovec on 09.05.2025.
//

import XCTest

final class SwiftUI_ViewsAndStateUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    @MainActor
    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
