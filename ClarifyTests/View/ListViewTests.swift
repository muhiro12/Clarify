//
//  ListViewTests.swift
//  ClarifyTests
//
//  Created by Hiromu Nakano on 2020/04/13.
//  Copyright © 2020 Hiromu Nakano. All rights reserved.
//

import XCTest
@testable import Clarify

class ListViewTests: XCTestCase {
    func testPreviews() {
        XCTAssertNoThrow(ListView_Previews.previews)
    }

    func testBody() {
        XCTAssertNoThrow(ListView_Previews.previews.body)
    }
}
