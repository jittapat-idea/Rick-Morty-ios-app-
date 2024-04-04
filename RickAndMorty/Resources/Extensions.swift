//
//  Extensions.swift
//  RickAndMorty
//
//  Created by Jittapat Ausakul on 4/4/2567 BE.
//

import UIKit

extension UIView{
    func addSubviews(_ views: UIView...){
        views.forEach({
            addSubview($0)
        })
    }
}
