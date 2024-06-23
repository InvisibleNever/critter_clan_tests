import XCTest

class GalleryScreenTests: BaseTest {
    
    let galleryScreen = GalleryScreen()
    let homeScreen = HomeScreen()
    
    override func setUp() {
        super.setUp()
        
        // Set continueAfterFailure to false, to stop testing after fail
        continueAfterFailure = true
        
        // Tap galleryButton on the HomeScreen before test
        homeScreen.galleryButton.tap()
    }
    
    // Verification that Main Gallery image can be changed and compare it with a default one
    func testMainImageChange() throws {
        let currentMainImage = galleryScreen.randomAnimalImageTap()
        XCTAssertNotEqual(currentMainImage, galleryScreen.mainGalleryImage.label, "Same Main image is displayed.")
    }
    
    // Test that Hippo image is displayed
    func testHippoImage() throws {
        XCTAssertTrue(galleryScreen.hippoImage.isHittable, "Hippo image not displayed at the screen")
    }
        
    // Test Gallery slider is displayed on the screen
    func testGallerySlider() throws {
        XCTAssertTrue(galleryScreen.imagesSlider.exists, "Gallery slider not displayed on the screen")
    }
    
    // Test Gallery slider can be swiped to the left
    func testMoveSliderLeft() throws {
        galleryScreen.moveSliderLeft()
        // Check that slider value is 2
        XCTAssertEqual(galleryScreen.imagesSlider.value as! String, "2", "Slider value is not equals to '2'. Slider wasn't moved or moved wrong")
        // Check that Gorilla image not displayed after slider was swiped
        XCTAssertFalse(galleryScreen.gorillaImage.isHittable, "Gorilla image is still displayed. Slider wasn't moved or moved wrong")
    }
    
    // Test Gallery slider can be swiped to the right
    func testMoveSliderRight() throws {
        galleryScreen.moveSliderRight()
        // Check that slider value is 4
        XCTAssertEqual(galleryScreen.imagesSlider.value as! String, "4", "Slider value is not equals to '4'. Slider wasn't moved or moved wrong")
    }
}
