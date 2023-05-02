//
//  ContentSizedTableView.swift
//  ContentSizedTableViewAndConllectionView
//
//  Created by Chhan Sophearith on 2/5/23.
//

import Foundation
import UIKit

class ContentSizedTableView: UITableView {
    override var contentSize: CGSize {
        didSet {
            invalidateIntrinsicContentSize()
        }
    }

    override var intrinsicContentSize: CGSize {
        layoutIfNeeded()
        return CGSize(width: UIView.noIntrinsicMetric, height: contentSize.height)
    }
}
