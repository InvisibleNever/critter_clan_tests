import Foundation
import XCTest

class VideosScreen: BaseScreen {
    
    // Videos Screen locators
    
    lazy var shuffleVideosButton = app.buttons.matching(NSPredicate(format: "label == 'arrow.2.squarepath'")).element
    
    lazy var elephantItemText = app.staticTexts["Elephant"]
    
    lazy var ostrichItemText = app.staticTexts["Ostrich"]
    
    lazy var gorillaItemText = app.staticTexts["Gorilla"]
    
    lazy var ostrichVideoTitle = app.staticTexts.matching(NSPredicate(format: "label == 'Ostrich'")).element
    
    lazy var critterClanLogo = app.images["logo"]
    
    lazy var videoElement = app.otherElements.matching(NSPredicate(format: "label == 'Video'")).element
    
    lazy var backToVideosList = app.buttons["Videos"]
    
}
