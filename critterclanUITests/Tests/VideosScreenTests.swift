import XCTest

class VideoScreenTests: BaseTest {
    
    let videoScreen = VideosScreen()
    let homeScreen = HomeScreen()
    
    override func setUp() {
        super.setUp()
            
            // Set continueAfterFailure to false, to stop testing after fail
            continueAfterFailure = true

            // Tap watchButton on the HomeScreen before test
            homeScreen.watchButton.tap()
    }
    
    // Test Elephant video title is displayed
    func testElephantVideoTitle() throws {
        XCTAssertTrue(videoScreen.elephantItemText.isHittable, "Elephant video title not displayed at the screen")
    }
    
    // Test Shuffle videos button is displayed
    func testShuffleButton() throws {
        XCTAssertTrue(videoScreen.shuffleVideosButton.isHittable, "Shuffle videos button not displayed at the screen")
    }
    
    // Test videos can be shuffled
    func testShuffleVideos() throws {
        while !videoScreen.ostrichItemText.isHittable {
            videoScreen.shuffleVideosButton.tap()
        }
        XCTAssertTrue(videoScreen.ostrichItemText.isHittable, "Ostrich item not displayed. Shuffle button might not work")
    }
    
    // Test videos can be played
    func testPlayVideo() throws {
        videoScreen.elephantItemText.tap()
        XCTAssertFalse(videoScreen.videoElement.exists, "Video is played")
    }
    
    // Test Critter Clan logo is displayed in videos
    func testCritterClanLogo() {
        videoScreen.elephantItemText.tap()
        XCTAssertTrue(videoScreen.critterClanLogo.exists, "Critter Clan logo not displayed at the screen. Video played wasn't open")
    }
    
    // Test user can back to videos list from video player
    func testBackToVideoList() {
        videoScreen.elephantItemText.tap()
        XCTAssertTrue(videoScreen.backToVideosList.isHittable, "Video played wasn't open")
        videoScreen.backToVideosList.tap()
        XCTAssertTrue(videoScreen.gorillaItemText.isHittable, "Videos list not displayed. Video played wasn't closed")
    }
}
