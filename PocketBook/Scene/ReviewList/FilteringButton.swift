//
//  FilteringButton.swift
//  PocketBook
//
//  Created by 이석원 on 2023/09/11.
//

import UIKit

protocol FilteringButtonDelegate: AnyObject {
    func didTapFilterButton(filter: FilterType)
}

class FilteringButton: UIView {
    weak var delegate: FilteringButtonDelegate?
    
    let allButton = UIButton(type: .system)
    let unreadButton = UIButton(type: .system)
    let readingButton = UIButton(type: .system)
    let readButton = UIButton(type: .system)
    
    private lazy var filterButtons: UIStackView = {
        
        allButton.setTitle("전체보기", for: .normal)
        allButton.layer.borderWidth = 1
        allButton.layer.cornerRadius = 20
        allButton.setTitleColor(.label, for: .normal)
        allButton.backgroundColor = .systemBackground
        allButton.addTarget(self, action: #selector(filterButtonTapped(_:)), for: .touchUpInside)
        
        
        unreadButton.setTitle("안 읽은 책", for: .normal)
        unreadButton.layer.borderWidth = 1
        unreadButton.layer.cornerRadius = 20
        unreadButton.setTitleColor(.label, for: .normal)
        unreadButton.backgroundColor = .systemBackground
        unreadButton.addTarget(self, action: #selector(filterButtonTapped(_:)), for: .touchUpInside)
        
        
        readingButton.setTitle("읽고 있는 책", for: .normal)
        readingButton.layer.borderWidth = 1
        readingButton.layer.cornerRadius = 20
        readingButton.setTitleColor(.label, for: .normal)
        readingButton.backgroundColor = .systemBackground
        readingButton.addTarget(self, action: #selector(filterButtonTapped(_:)), for: .touchUpInside)
        
        
        readButton.setTitle("다 읽은 책", for: .normal)
        readButton.layer.borderWidth = 1
        readButton.layer.cornerRadius = 20
        readButton.setTitleColor(.label, for: .normal)
        readButton.backgroundColor = .systemBackground
        readButton.addTarget(self, action: #selector(filterButtonTapped(_:)), for: .touchUpInside)
        
        let stackView = UIStackView(arrangedSubviews: [allButton, unreadButton, readingButton, readButton])
        stackView.axis = .horizontal
        stackView.distribution = .fillProportionally
        stackView.spacing = 10
        stackView.alignment = .fill
        stackView.layoutMargins = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        stackView.isLayoutMarginsRelativeArrangement = true
        
        return stackView
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.addSubview(filterButtons)
        
        filterButtons.translatesAutoresizingMaskIntoConstraints = false
        filterButtons.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        filterButtons.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        filterButtons.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        filterButtons.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        
        let buttons = [allButton, unreadButton, readingButton, readButton]
        buttons.forEach { button in
            button.heightAnchor.constraint(equalToConstant: 10).isActive = true
            
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc private func filterButtonTapped(_ sender: UIButton) {
        guard let filterTitle = sender.title(for: .normal) else { return }
        
        let filter: FilterType
        switch filterTitle {
        case "전체보기":
            filter = .all
        case "안 읽은 책":
            filter = .notRead
        case "읽고 있는 책":
            filter = .reading
        case "다 읽은 책":
            filter = .completed
        default:
            return
        }
        
        for case let button as UIButton in filterButtons.arrangedSubviews {
            button.backgroundColor = button == sender ? .systemGray2.withAlphaComponent(0.5) : .systemBackground
        }
        
        delegate?.didTapFilterButton(filter: filter)
        
    }
}
