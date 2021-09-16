//
//  SaleCollectionViewControllerUICollectionViewDataSourcePrefetching.swift
//  Chain
//
//  Created by Yocelin Garcia Romero on 16/09/21.
//

import UIKit

extension SaleCollectionViewController: UICollectionViewDataSourcePrefetching {
    func collectionView(_: UICollectionView, prefetchItemsAt indexPaths: [IndexPath]) {
        guard let indexPath = indexPaths.last else { return }
        print("================\(indexPath.row)=================")
    }
}
