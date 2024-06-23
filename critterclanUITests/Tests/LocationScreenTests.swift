import XCTest

class LocationScreenTests: BaseTest {
    
    let locationScreen = LocationScreen()
    let homeScreen = HomeScreen()
    
    override func setUp() {
        super.setUp()
            
            // Set continueAfterFailure to false, to stop testing after fail
            continueAfterFailure = true

            // Tap to locationButton on the HomeScreen before test
            homeScreen.locationButton.tap()
    }
    
    // Test Compass icon is displayed
    func testCompassIcon() throws {
        XCTAssertTrue(locationScreen.compassIcon.isHittable, "Compass image not displayed at the screen")
    }
    
    // Test Rhino icon is displayed on the map
    func testRhinoImage() throws {
        XCTAssertTrue(locationScreen.rhinoPin.isHittable, "Rhino image not displayed at the screen")
    }
    
    // Test default latitude value
    func testLatitude() throws {
        XCTAssertEqual(locationScreen.latitude, "6.600029", "Latitude not displayed or value is wrong")
    }
    
    // Test default longitude value
    func testLongitude() throws {
        XCTAssertEqual(locationScreen.longitude, "16.437760", "Longitude not displayed or value is wrong")
    }
    
    // Test Rhino icon is not displayed on the map after map move
    func testCoordinatesAfterMove() throws {
        locationScreen.moveImage()
        XCTAssertFalse(locationScreen.rhinoPin.isHittable, "Rhino image is displayed. Map was'n move")
    }
}
