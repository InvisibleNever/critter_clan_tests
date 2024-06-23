import Foundation
import XCTest

class AnimalInfoScreen: BaseScreen {
    
    // Animal Info Screen locators
    
    lazy var giraffeMainImage = app.images["giraffe"]
    
    lazy var giraffeTitle = app.staticTexts["GIRAFFE"]
    
    lazy var galleryIcon = app.images["photo.on.rectangle.angled"]
    
    lazy var galleryTitle = app.staticTexts["Wilderness in Pictures"]
    
    lazy var factsIcon = app.images["questionmark.circle"]
    
    lazy var factsTitle = app.staticTexts["Did You Know?"]
    
    lazy var infoIcon = app.images["Info"]
    
    lazy var fullInfoTitle = app.staticTexts["All about Giraffe"]
    
    lazy var mapIcon = app.images["Show Map"]
    
    lazy var mapTitle = app.staticTexts["National Parks"]
    
    lazy var mapImage = app.otherElements["AnnotationContainer"]
    
    lazy var learnMoreIcon = app.images["books.vertical"]
    
    lazy var learnMoreTitle = app.staticTexts["Learn More"]
    
    lazy var shortAnimalInfo = app.staticTexts.element(matching: NSPredicate(format: "label CONTAINS[c] %@", "At an average height of around 5 m"))
    
    lazy var firstGiraffeGalleryImage = app.images["giraffe-1"]
    
    lazy var lastGiraffeGalleryImage = app.images["giraffe-4"]
    
    lazy var scrollViewGallery = app.scrollViews.element(boundBy: 0)
    
    lazy var scrollFactsBlock = app.collectionViews.element(boundBy: 0)
    
    lazy var firstFact = app.staticTexts.element(matching: NSPredicate(format: "label CONTAINS[c] %@", "Giraffes only need 5 to 30"))
    
    lazy var secondFact = app.staticTexts.element(matching: NSPredicate(format: "label CONTAINS[c] %@", "They can run as fast as 35"))
    
    lazy var thirdFact = app.staticTexts.element(matching: NSPredicate(format: "label CONTAINS[c] %@", "Within just 10 hours"))
    
    lazy var fullInfoText = app.staticTexts.element(matching: NSPredicate(format: "label CONTAINS[c] %@", "The giraffe is an African artiodactyl mammal"))
    
    lazy var startCoord = galleryTitle.coordinate(withNormalizedOffset: CGVector(dx: 0.5, dy: 0.5))
    
    lazy var endCoord = learnMoreTitle.coordinate(withNormalizedOffset: CGVector(dx: 0.5, dy: 0.5))
}
