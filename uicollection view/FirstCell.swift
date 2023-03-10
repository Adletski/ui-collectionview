//
//  FirstCell.swift
//  uicollection view
//
//  Created by Adlet Zhantassov on 10.03.2023.
//

import UIKit

class FirstCell: UICollectionViewCell {
    
    static let identifier = "FirstCell"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = .red
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
