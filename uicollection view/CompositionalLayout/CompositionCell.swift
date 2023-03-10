//
//  CompositionCell.swift
//  uicollection view
//
//  Created by Adlet Zhantassov on 10.03.2023.
//

import UIKit

class CompositionCell: UICollectionViewCell {
    
    static let identifier = "CompositionalCell"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
