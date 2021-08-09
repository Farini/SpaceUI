import XCTest
import SwiftUI
@testable import SpaceUI

final class SpaceUITests: XCTestCase {
    
    @State var text:String
    
    public init(text:String) {
        self.text = text
        super.init()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        var body: some View {
            SpaceUI.MainTextField(placeholder: "Testing", text: $text)
        }
//        XCTAssertEqual(, "Hello, World!")
    }
}
