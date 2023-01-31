//
//  mypage.swift
//  School-Plan
//
//  Created by 민지 on 2023/01/14.
//
import UIKit

class mypage: UIViewController {
    let table = UITableView(frame: .zero, style: .grouped)
    table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    return table

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Setting"
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
    }


}
