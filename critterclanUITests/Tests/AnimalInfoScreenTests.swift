import XCTest

class AnimalInfoScreenTests: BaseTest {
    
    let homeScreen = HomeScreen()
    let animalInfoScreen = AnimalInfoScreen()
    
    override func setUp() {
        super.setUp()
        
        // Set continueAfterFailure = true, to continue tests after fail
        continueAfterFailure = true
        
        // Tap to needed animal image at HomeScreen
        app.swipeUp()
        homeScreen.giraffeImage.tap()
    }
    
    // Test for main image at Animal Info screen
    func testMainAnimalScreenImage() throws {
        XCTAssertTrue(animalInfoScreen.giraffeMainImage.isHittable, "Main image at Animal Info screen not displayed/Wrong Animal Info screen is opened")
    }
    
    // Test Animal Info screen title
    func testAnimalTitle() throws {
        XCTAssertTrue(animalInfoScreen.giraffeTitle.isHittable, "Title not displayed at Animal Info screen")
    }
    
    // Test for Short animal info
    func testShortAnimalInfo() throws {
        XCTAssertTrue(animalInfoScreen.shortAnimalInfo.isHittable, "Short animal info not displayed")
    }
    
    // Test for Gallery block at Animal Info page
    func testGalleryTitle() throws {
        XCTAssertTrue(animalInfoScreen.galleryIcon.isHittable, "Gallery icon not displayed")
        XCTAssertTrue(animalInfoScreen.galleryTitle.isHittable, "Gallery title not displayed")
    }
    
    // Test to check gallery carousel scroll
    func testGalleryScrollable() throws {
        XCTAssertTrue(animalInfoScreen.firstGiraffeGalleryImage.isHittable)
        animalInfoScreen.firstGiraffeGalleryImage.swipeLeft()
        XCTAssertTrue(animalInfoScreen.lastGiraffeGalleryImage.isHittable, "Gallery carousel not scrolled")
    }
    
    // Test for Facts block at Animal Info page
    func testFactsTitle() throws {
        app.swipeUp()
        XCTAssertTrue(animalInfoScreen.factsIcon.isHittable, "Facts icon not displayed")
        XCTAssertTrue(animalInfoScreen.factsTitle.isHittable, "Facts title not displayed")
    }
    
    // Test Facts block is scrollable
    func testFactsBlock() throws {
        app.swipeUp()
        XCTAssertTrue(animalInfoScreen.scrollFactsBlock.isHittable, "Facts block not displayed")
        XCTAssertTrue(animalInfoScreen.firstFact.isHittable, "First fact not displayed")
        animalInfoScreen.scrollFactsBlock.swipeLeft()
        XCTAssertTrue(animalInfoScreen.secondFact.isHittable, "Second fact not displayed")
        animalInfoScreen.scrollFactsBlock.swipeLeft()
        XCTAssertTrue(animalInfoScreen.thirdFact.isHittable, "Third fact not displayed")
    }
    
    // Tests for Full info block
    func testFullInfoTitle() throws {
        app.swipeUp()
        XCTAssertTrue(animalInfoScreen.infoIcon.isHittable, "Full info block icon not displayed")
        XCTAssertTrue(animalInfoScreen.fullInfoTitle.isHittable, "Full info block title not displayed")
        XCTAssertTrue(animalInfoScreen.fullInfoText.isHittable, "Full info text not displayed")
    }
    
    // Tests for Map block
    func testMapBlock() throws {
        // Scroll down until map is visible
        while !animalInfoScreen.mapTitle.isHittable {
            app.swipeUp()
        }
        XCTAssertTrue(animalInfoScreen.mapIcon.isHittable, "Map block icon not displayed")
        XCTAssertTrue(animalInfoScreen.mapTitle.isHittable, "Map block title not displayed")
        XCTAssertTrue(animalInfoScreen.mapImage.exists, "Map image not displayed")
    }
    
    // Tests for Learn More block
    func testLearnMore() throws {
        // Scroll down until Learn More block is visible
        while !animalInfoScreen.learnMoreIcon.isHittable {
            app.swipeUp()
        }
        XCTAssertTrue(animalInfoScreen.learnMoreIcon.isHittable, "Learn More block icon not displayed")
        XCTAssertTrue(animalInfoScreen.learnMoreTitle.isHittable, "Learn More block title not displayed")
    }
}
