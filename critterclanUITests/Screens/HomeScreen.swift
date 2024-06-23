import Foundation
import XCTest


class HomeScreen: BaseScreen {
    
    // Home Screen locators
    
    lazy var lionCoverImage = app.images["cover-lion"]
    
    lazy var cheetahCoverImage = app.images["cover-cheetah"]
    
    lazy var browseButton = app.buttons["Browse"]
    
    lazy var watchButton = app.buttons["Watch"]
    
    lazy var locationButton = app.buttons["Location"]
    
    lazy var galleryButton = app.buttons["Gallery"]
    
    lazy var zebraImage = app.images["zebra"]
    
    lazy var gridViewButton = app.buttons["Grid View"]
    
    lazy var launchpadViewButton = app.buttons["Launchpad"]
    
    lazy var rectangleViewButton = app.buttons["rectangle.grid.1x2"]
    
    lazy var giraffeImage = app.images["giraffe"]
    
    lazy var lionButtonQuery = app.buttons.containing(.staticText, identifier: nil).matching(NSPredicate(format: "label CONTAINS[c] %@", "Lion"))
    
    lazy var coverImagePageScroll = app.pageIndicators.element

}
