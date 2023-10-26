//
//  TreasureQuestTests.swift
//  TreasureQuestTests
//
//  Created by Salif DIOP on 13/10/2023.
//

import XCTest
import Combine
@testable import TreasureQuest

final class TreasureQuestTests: XCTestCase {
    
    private var dataRepository: DataRepository!
    private var cancellables: Set<AnyCancellable> = []
    
    override func setUpWithError() throws {
        dataRepository = .init()
        try super.setUpWithError()
    }
    
    override func tearDownWithError() throws {
        dataRepository = nil
        try super.tearDownWithError()
    }
    
    func testDigging() throws {
        
        let expectation = XCTestExpectation(description: "Fetching treasure data")
        
        dataRepository.digg()
            .sink(receiveCompletion: { completion in
                switch completion {
                case .failure(let error):
                    XCTFail("Fetching treasure data failed with error: \(error)")
                case .finished:
                    break
                }
                expectation.fulfill()
            }, receiveValue: { treasure in
                // Here is the sample of expected result,
                // it will fail if the result is different
                XCTAssertEqual(treasure.name, "Gold")
                XCTAssertEqual(treasure.iconName, "gold_x1")
                XCTAssertEqual(treasure.value, 10)
            })
            .store(in: &cancellables)
        
        wait(for: [expectation], timeout: 3.0)
        
    }
    
}
