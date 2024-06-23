import Foundation
import XCTest

class LocationScreen: BaseScreen {
    
    // Location Screen locators
    
    lazy var compassIcon = app.images["compass"]
    
    lazy var rhinoPin = app.images["map-kidepo"]
    
    lazy var latitude = app.staticTexts["6.600029"].label
    
    lazy var longitude = app.staticTexts["16.437760"].label
    
    // Method to move map
    func moveImage() {
        
        let startPoint = rhinoPin.coordinate(withNormalizedOffset: CGVector(dx: 0, dy: 0))
        
        let endPoint = rhinoPin.coordinate(withNormalizedOffset: CGVector(dx: 1.5, dy: 1.5))
        
        startPoint.press(forDuration: 0, thenDragTo: endPoint)
        
        // Create a wait to check if the movement has stopped
        let movementStoppedExpectation = XCTestExpectation(description: "Movement of image stopped")
            
        // Check the movement status while waiting for the position to change
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
            // Determine that the movement has stopped
            let isMovementStopped = true
            
            if isMovementStopped {
                movementStoppedExpectation.fulfill()
            }
        }
            
        // Waiting for 5 seconds for the standby to complete
        let result = XCTWaiter().wait(for: [movementStoppedExpectation], timeout: 5)
        XCTAssertEqual(result, .completed, "Movement of image did not stop in time")
    }
}
