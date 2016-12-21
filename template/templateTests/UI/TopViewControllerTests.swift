import UIKit
import Quick
import Nimble

@testable import template


class TopViewControllerTests: QuickSpec {
    override func spec() {
        
        describe("display subviews") {
            
            it("displays button") {
                let topViewController = TopViewController()
                
                
                expect(self.contailButtonWithText(topViewController.view, text: "button")).to(beTrue())
            }
        }
    }
    
    private func contailButtonWithText(view: UIView, text: String) -> Bool {
        
        for subview in view.subviews {
            if let button = subview as? UIButton where button.titleLabel?.text == text {
                return true
            }
            if contailButtonWithText(subview, text: text) {
                return true
            }
        }
        return false
    }

}
