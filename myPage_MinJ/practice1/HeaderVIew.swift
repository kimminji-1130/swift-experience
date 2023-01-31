//
//  HeaderVIew.swift
//  School-Plan
//
//  Created by 민지 on 2023/01/15.
//

import UIKit

class HeaderVIew: UIView {

    // Mark: - Proparties
    //이미지 파일
    let profileImage : UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(systemName: "person.crop.circle.badge.checkmark.fill")
        iv.contentMode = .scaleToFill
        iv.layer.cornerRadius = 120 / 2
        iv.clipsToBounds = true
        return iv
    }()
    
    // Mark: - LifeCycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configureUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // Mark: - Melpare
    func configureUI() {
        
        addSubview(profileImage)
        profileImage.translatesAutoresizingMaskIntoConstraints = false
        
        profileImage.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        profileImage.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        //가로크기, 세로크기
        profileImage.widthAnchor.constraint(equalToConstant: 120).isActive = true
        profileImage.heightAnchor.constraint(equalToConstant: 120).isActive = true
    }
    
}
