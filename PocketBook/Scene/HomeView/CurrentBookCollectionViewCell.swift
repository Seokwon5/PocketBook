//
//  CurrentBookCollectionViewCell.swift
//  PocketBook
//
//  Created by 이석원 on 2023/09/02.
//

import UIKit
import SnapKit
import Kingfisher

class CurrentBookCollectionViewCell: UICollectionViewCell {
    
    
    lazy var currentImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .systemBackground
        imageView.contentMode = .scaleAspectFit
        
        return imageView
    }()
    
    lazy var currentBookLabel: UILabel = {
        let label = UILabel()
        label.textColor = .label
        
        
        label.font = .systemFont(ofSize: 16.0, weight: .semibold)
        label.numberOfLines = 2
        label.lineBreakMode = .byTruncatingTail
         
        return label
    }()
    
    private lazy var currentBookIndex: UILabel = {
        let label = UILabel()
        
        label.text = "책갈피"
        label.font = .systemFont(ofSize: 14.0, weight: .medium)
         
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()

    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup() {
        [currentImageView, currentBookLabel].forEach { addSubview($0) }
        
        currentImageView.snp.makeConstraints{
            $0.leading.equalToSuperview()
            $0.top.equalToSuperview()
            $0.width.equalTo(120.0)
            $0.height.equalTo(200.0)
        }
        
        currentBookLabel.snp.makeConstraints{
            $0.top.equalTo(currentImageView.snp.bottom)
            $0.leading.equalTo(currentImageView.snp.leading)
            $0.width.equalTo(currentImageView.snp.width)
        }
 
    }
    

}
