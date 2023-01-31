//
//  SecondSection.swift
//  School-Plan
//
//  Created by 민지 on 2023/01/16.
//

import UIKit

class SecondSection: UIView {

    //Mark :- P
    let titleLable: UILabel = {
        let label = UILabel()
        label.text = "Setting"
        label.font = .systemFont(ofSize: 13)
        return label
    }()
    
    let lineView: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        return view
    }()
    //Mark :- L
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .white
        
        addSubview(lineView)
        addSubview(titleLable)
        
//        lineView.anchor(top: topAnchor, left: leftAnchor, right: rightAnchor, paddingTop: 12, paddingLeft: 16, paddingRight: 16, height: 1)
//        titleLable.anthor(top: lineView.bottomAnchor, left: leftAnchor, paddingTop: 23, paddingLeft: 20)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
