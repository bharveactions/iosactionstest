//
//  GitHubActionsUITestUITests.swift
//  GitHubActionsUITestUITests
//
//  Created by admin on 3/23/23.
//

import XCTest

final class GitHubActionsUITestUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
    
    func testWelcome() throws {
        let app = XCUIApplication()
        app.launch()
     
        let welcome = app.staticTexts.element
     
        XCTAssert(welcome.exists)
        XCTAssertEqual(welcome.label, "Welcome!")
    }
    
    func testLoginButton() throws {
        let app = XCUIApplication()
        app.launch()
     
        let login = app.buttons["loginButton"]
     
        XCTAssert(login.exists)
    }
    
    func testLoginFormAppearance() throws {
        let app = XCUIApplication()
        app.launch()

        app.buttons["loginButton"].tap()
        let loginNavBarTitle = app.staticTexts["Login"]
        XCTAssert(loginNavBarTitle.waitForExistence(timeout: 0.5))
    }

    func testLoginForm() throws {
        let app = XCUIApplication()
        app.launch()

        app.buttons["Login"].tap()
     
        let navBar = app.navigationBars.element
        XCTAssert(navBar.exists)
     
        let username = app.textFields["Username"]
        XCTAssert(username.exists)
     
        let password = app.secureTextFields["Password"]
        XCTAssert(password.exists)
     
        let login = app.buttons["loginNow"]
        XCTAssert(login.exists)
        XCTAssertEqual(login.label, "Login")
     
        let dismiss = app.buttons["Dismiss"]
        XCTAssert(dismiss.exists)
    }
}
