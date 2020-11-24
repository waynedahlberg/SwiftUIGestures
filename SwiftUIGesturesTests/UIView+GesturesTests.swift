//
//  UIView_GesturesTests.swift
//  
//
//  Created by Wayne Dahlberg on 11/24/20.
//

import Foundation
import XCTest

@testable import SwiftUIGestures

final class UIView_GesturesTests: XCTestCase {
  
  func testVisualEffectViewIsCorrectlyAdded() {
    let view = UIView()
    let obj = TestClass()
    view.addGesture(.up, target: obj, action: #selector(obj.doStuff))
    
    let gestures = view.gestureRecognizers
    
    XCTAssertEqual(gestures?.count, 1)
    XCTAssertTrue(gestures?[0] is UISwipeGestureRecognizer)
  }
  
}

private class TestClass: NSObject {
  @objc func doStuff() {}
}
