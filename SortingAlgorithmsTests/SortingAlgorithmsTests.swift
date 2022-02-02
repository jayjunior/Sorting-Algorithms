//
//  SortingAlgorithmsTests.swift
//  SortingAlgorithmsTests
//
//  Created by Jay Junior  on 02.02.22.
//

import XCTest

class SortingAlgorithmsTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }
    func testInsertionSort(){
        for _ in  0...150 {
            let array = (1...100).map({_ in
                Int.random(in: 0...1000)
            })
            let sut = SortingAlgorithms();
            let actual = sut.insertion_sort(array);
            let expected = array.sorted();
            XCTAssertEqual(actual,expected,"Array not well sorted")
            print("you did it !!")
        }
    }
    func testBubbleSort(){
        for _ in  0...150 {
            let array = (1...100).map({_ in
                Int.random(in: 0...1000)
            })
            let sut = SortingAlgorithms();
            let actual = sut.bubble_sort(array);
            let expected = array.sorted();
            XCTAssertEqual(actual,expected,"Array not well sorted")
            print("you did it !!")
        }
    }
    func testSelectionSort(){
        for _ in  0...150 {
            let array = (1...100).map({_ in
                Int.random(in: 0...1000)
            })
            let sut = SortingAlgorithms();
            let actual = sut.selection_sort(array);
            let expected = array.sorted();
            XCTAssertEqual(actual,expected,"Array not well sorted")
            print("you did it !!")
        }
    }
    func testMergeSort(){
        for _ in  0...150 {
            let array = (1...100).map({_ in
                Int.random(in: 0...1000)
            })
            let sut = SortingAlgorithms();
            let actual = sut.merge_sort(array);
            let expected = array.sorted();
            XCTAssertEqual(actual,expected,"Array not well sorted")
            print("you did it !!")
        }
    }
    func testQuickSort(){
        for _ in  0...150 {
            let array = (1...100).map({_ in
                Int.random(in: 0...1000)
            })
            let sut = SortingAlgorithms();
            let actual = sut.quick_sort(array);
            let expected = array.sorted();
            XCTAssertEqual(actual,expected,"Array not well sorted")
            print("you did it !!")
        }
    }
    
    func testHeapSort(){
        for _ in  0...150 {
            let array = (1...100).map({_ in
                Int.random(in: 0...1000)
            })
            let sut = SortingAlgorithms();
            let actual = sut.heap_sort(array);
            let expected = array.sorted();
            XCTAssertEqual(actual,expected,"Array not well sorted")
            print("you did it !!")
        }
    }

}
