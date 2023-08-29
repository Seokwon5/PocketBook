//
//  ReviewListPresenterTests.swift
//  BookReviewTests
//
//  Created by 이석원 on 2023/06/09.
//

import XCTest
@testable import BookReview

class ReviewListPresenterTests: XCTestCase {
    var sut: ReviewListPresenter!
    var viewController: ReviewListProtocol!
    
    override func setUp() {
        super.setUp()
        
        viewController = MockReviewListViewController()
        sut = ReviewListPresenter(viewController: viewController)
    }
    
    override func tearDown() {
        sut = nil
        viewController = nil
        
        super.tearDown()
    }
}
 
final class MockReviewListViewController: ReviewListProtocol {
    var isCalledSetupNavigationBar = false
    var isCalledSetupViews = false
    var isCalledPresentToReviewWriteViewController = false
    var isCalledReloadTableView = false
    
    func setupNavigationBar() {
        isCalledSetupNavigationBar = true
    }
    
    func setupViews() {
        isCalledSetupViews = true
    }
    
    func presentToReviewWriteViewController() {
        isCalledPresentToReviewWriteViewController = true
    }
    
    func reloadTableView() {
        isCalledReloadTableView = true
    }
}
