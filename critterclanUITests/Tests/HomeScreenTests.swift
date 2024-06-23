import XCTest

class HomeScreenTests: BaseTest {
    
    let homeScreen = HomeScreen()
    
    // Test to see the defaul cover image on app load
    func testLionCoverImage() throws {
        
        // XCTAssert and related functions are used to verify tests produce the correct results.
        XCTAssertTrue(homeScreen.lionCoverImage.isHittable, "Wrong cover image is displayed or cover image not displayed at all")
    }
    
    // Test to verify that correct cover image is displayed after scroll
    func testCheetahCoverImage() throws {
        var count = 0
        while count < 2 {
            homeScreen.coverImagePageScroll.tap()
            count += 1
        }
        XCTAssertTrue(homeScreen.cheetahCoverImage.isHittable, "Wrong cover image is displayed/cover image wasn't changed/cove r image not displayed")
    }
    
    // Test for tab bar icons and buttons
    func testTabBar() throws {
        XCTAssertTrue(homeScreen.browseButton.isHittable, "Browse button not displayed in the tab bar")
        XCTAssertTrue(homeScreen.watchButton.isHittable, "Watch button not displayed in the tab bar")
        XCTAssertTrue(homeScreen.locationButton.isHittable, "Location button not displayed in the tab bar")
        XCTAssertTrue(homeScreen.galleryButton.isHittable, "Gallery button not displayed in the tab bar")
    }
    
    // Test to verify that it is possible to change view in the Home screen
    func testHomeViewChange() throws {
        XCTAssertTrue(homeScreen.gridViewButton.isHittable, "Grid view button not displayed")
        homeScreen.gridViewButton.tap()
        XCTAssertTrue(homeScreen.launchpadViewButton.isHittable, "Launchpad view button not displayed/Grid view button wasn't change after tap")
        homeScreen.launchpadViewButton.tap()
        XCTAssertTrue(homeScreen.rectangleViewButton.isHittable, "Rectangle view button not displayed/Launchpad view button wasn't change after tap")
        homeScreen.rectangleViewButton.tap()
    }
    
    // Test Zebra block with image is displayed
    func testZebraImage() throws {
        XCTAssertTrue(homeScreen.zebraImage.isHittable, "Zebra block not displayed")
    }
               
    // Test Giraffe block with image is displayed after swipe
    func testGiraffeImage() throws {
        homeScreen.zebraImage.swipeUp()
        XCTAssertTrue(homeScreen.giraffeImage.isHittable, "Giraffe image not displayed after swipe")
        homeScreen.giraffeImage.tap()
    }
}
