import Foundation
import XCTest

class GalleryScreen: BaseScreen {
    
    // Gallery Screen locators
    
    lazy var imagesSlider = app.sliders.element
    
    lazy var gorillaImage = app.images["gorilla"]
    
    lazy var hippoImage = app.images["hippo"]
    
    lazy var mainGalleryImage = app.images.matching(identifier: "lion").element(boundBy: 0)
    
    // Method to move slider left
    func moveSliderLeft() {
        // Set the initial value of the slider to position 3
        imagesSlider.adjust(toNormalizedSliderPosition: 0)
        
        // Move the slider to the left until value 2 is reached
        while imagesSlider.value as! String != "2" {
            imagesSlider.adjust(toNormalizedSliderPosition: imagesSlider.normalizedSliderPosition - 1)
        }
    }
    
    // Method to move slider right
    func moveSliderRight() {
        // Set the initial value of the slider to position 3
        imagesSlider.adjust(toNormalizedSliderPosition: 0)
        
        // Move the slider to the left until value 4 is reached
        while imagesSlider.value as! String != "4" {
            imagesSlider.adjust(toNormalizedSliderPosition: imagesSlider.normalizedSliderPosition + 1)
        }
    }
    
    // Method to choose a random animal image to set Main Gallery image. Tap it and return new value
    func randomAnimalImageTap() -> String {
        let animalImages = ["gorilla", "giraffe", "elephant", "zebra", "cheetah", "rhino", "buffalo", "hippo", "wild-dog", "meerkat", "ostrich"]
        let randomIndex = Int.random(in: 0..<animalImages.count)
        let clickImageName = animalImages[randomIndex]
        let animalIcon = app.images[clickImageName]
        if animalIcon.exists {
            animalIcon.tap()
            let currentMainImage = app.images.matching(identifier: "\(clickImageName)").element(boundBy: 0)
            return currentMainImage.label
        } else {
            return "Element \(clickImageName) not found!"
        }
    }
}
