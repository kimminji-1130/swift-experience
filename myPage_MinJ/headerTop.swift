//
//  headerTop.swift
//  School-Plan
//
//  Created by 민지 on 2023/01/16.
//

import UIKit

class headerTop: UIView {

    //Mark: -Proparties
    let topView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        return view
    }()
    
    let nameLable: UILabel = {
        let label = UILabel()
        label.text = "사람이름"
        label.textColor = .blue
        return label
    }()
    // Mark: - Lifecycle

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .white
        
        addSubview(topView)
        topView.addSubview(nameLable)
        
        //topView.anchor(top: topAnchor, left: leftAnchor, right: rightAnchor, height: 240)
//        nameLable.anchor(top: topAnchor, left: leftAnchor, right: rightAnchor, paddingTop: 108, paddingLeft: 16)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder):) has not been implemented")
    }

}
