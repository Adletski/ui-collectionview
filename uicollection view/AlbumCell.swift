//
//  AlbumCell.swift
//  uicollection view
//
//  Created by Adlet Zhantassov on 10.03.2023.
//

import UIKit

class AlbumCell: UICollectionViewCell {
    
    static let identifier = "AlbumCell"
    
    lazy var albumImageView: UIImageView = {
        let image = UIImageView()
//        image.contentMode = .scaleAspectFit
        return image
    }()
    
    lazy var percentLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    lazy var cloudImage: UIImageView = {
        let image = UIImage(systemName: "cloud")
        let imageView = UIImageView(image: image)
        imageView.tintColor = .black
        return imageView
    }()
    
    private lazy var bottomStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.distribution = .fill
        stack.spacing = 30
        return stack
    }()
    
    private lazy var mainStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.distribution = .fill
        return stack
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        addSubview(mainStack)
        bottomStack.addArrangedSubview(percentLabel)
        bottomStack.addArrangedSubview(cloudImage)
        mainStack.addArrangedSubview(albumImageView)
        mainStack.addArrangedSubview(bottomStack)
    }
    
    private func setupConstraints() {
        mainStack.snp.makeConstraints {
            $0.width.equalTo(170)
            $0.height.equalTo(300)
        }
    }
}
