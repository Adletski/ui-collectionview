//
//  CompositionViewController.swift
//  uicollection view
//
//  Created by Adlet Zhantassov on 10.03.2023.
//

import UIKit

class CompositionViewController: UIViewController {
    //MARK: - Outlets
    
    private lazy var collectionView: UICollectionView = {
        let layout = createLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(CompositionCell.self, forCellWithReuseIdentifier: CompositionCell.identifier)
        collectionView.delegate = self
        collectionView.dataSource = self
        return collectionView
    }()
    
    //MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan
        title = "Simple Example"
        setupViews()
        setupConstraints()
    }
    
    private func setupViews() {
        view.addSubview(collectionView)
    }
    
    private func setupConstraints() {
        collectionView.snp.makeConstraints {
            $0.left.top.right.bottom.equalTo(view.safeAreaLayoutGuide)
        }
    }
    
    private func createLayout() -> UICollectionViewCompositionalLayout {
        return UICollectionViewCompositionalLayout { sectionIndex, _ in
            let itemSize = NSCollectionLayoutSize(
                widthDimension: .fractionalWidth(1),
                heightDimension: .fractionalHeight(1)
            )
            let layoutItem = NSCollectionLayoutItem(
                layoutSize: itemSize
            )
            layoutItem.contentInsets = NSDirectionalEdgeInsets(
                top: 5,
                leading: 5,
                bottom: 5,
                trailing: 5)
            let groupSize = NSCollectionLayoutSize(
                widthDimension: .fractionalWidth(1/5),
                heightDimension: .fractionalWidth(1/5*4))
            let layoutGroup = NSCollectionLayoutGroup.horizontal(
                layoutSize: groupSize,
                subitem: layoutItem,
                count: 4)
            layoutGroup.interItemSpacing = NSCollectionLayoutSpacing.fixed(1)
            layoutGroup.contentInsets = NSDirectionalEdgeInsets(
                top: 0,
                leading: 2.5,
                bottom: 0,
                trailing: 2.5)
            let sectionLayout = NSCollectionLayoutSection(group: layoutGroup)
            sectionLayout.orthogonalScrollingBehavior = .groupPaging
            return sectionLayout
        }
    }
}

extension CompositionViewController: UICollectionViewDataSource, UICollectionViewDelegate {
//    func numberOfSections(in collectionView: UICollectionView) -> Int {
//        return 2
//    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 19
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CompositionCell.identifier, for: indexPath)
        cell.backgroundColor = .green
        return cell
    }
}
