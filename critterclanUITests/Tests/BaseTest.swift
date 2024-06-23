import XCTest


open class BaseTest: XCTestCase {
    private var baseScreen = BaseScreen()

    public enum Constants {

        public static let defaultWaitTime = 10.0
        public static let defaultLoadingTime = 30.0
    }

    lazy var app = baseScreen.app

    // Function to open the app before test
    open override func setUp() {
        super.setUp()
        app.launch()
        app.launchArguments = ["enable-testing"]
        continueAfterFailure = false
    }

    // Function to close the app after test
    open override func tearDown() {
        app.terminate()
    }
}
