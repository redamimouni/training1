//
//  ViewModelTests.swift
//  trainingAppTests
//
//  Created by reda.mimouni.ext on 25/10/2023.
//

import XCTest
@testable import trainingApp

class ViewModelTests: XCTestCase {

    func test_onClick_false() {
        let viewModel = ViewModel()

        let result = viewModel.onClick(userName: "toto", password: "tata")

        XCTAssertFalse(result)
    }

    func test_onClick_true() {
        let viewModel = ViewModel()

        let result = viewModel.onClick(userName: "JOHN DOE", password: "OMNES")

        XCTAssertTrue(result)
    }
}
