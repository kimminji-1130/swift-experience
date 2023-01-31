//
//  FirstSection.swift
//  School-Plan
//
//  Created by 민지 on 2023/01/16.
//

import UIKit

class FirstSection: UIView {

    //Mark :- P
    
    let titleLable: UILabel = {
        let label = UILabel()
        label.text = "basic info"
        label.font = .systemFont(ofSize: 13)
        return label
    }()
    //Mark :- L
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .white
        
        addSubview(titleLable)
        
 //       titleLable.anchor(top: topAnchor, left: leftAnchor, paddingTop: 8, paddingLeft: 20)

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}
