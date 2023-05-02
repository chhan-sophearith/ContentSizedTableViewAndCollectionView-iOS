//
//  ContentSizedCollectionView.swift
//  ContentSizedTableViewAndConllectionView
//
//  Created by Chhan Sophearith on 2/5/23.
//

import Foundation
import UIKit

class ContentSizedCollectionView: UICollectionView {

    override func layoutSubviews() {
        super.layoutSubviews()
        if bounds.size != intrinsicContentSize {
            self.invalidateIntrinsicContentSize()
        }
    }

    override var intrinsicContentSize: CGSize {
        return collectionViewLayout.collectionViewContentSize
    }
}
