//
//  ViewCon_Setting.swift
//  School-Plan
//
//  Created by 민지 on 2023/01/14.
//

import UIKit

private let CellID = "Cell"

class ViewCon_Setting: UIViewController {

    // Mark: - Proparties
    let tableView = UITableView(frame: .zero, style: .grouped)// 헤더부분 안내려가는 것 해결 코드
    
    let myPageMenu = ["알람설정", "좋아요", "다크모드/일반모드"]
    // MArk : - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureUI()
    }
    
    // Mark: - Melpare
    func configureUI() {
        tableView.backgroundColor = .yellow //헤더 윗쪽 하얀 부분 노란색으로 채우는 코드
        
        view.addSubview(tableView)
        //위아래양옆 다 꽉 차우는 코드
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(MyPageCell.self, forCellReuseIdentifier: CellID)
//        아랫코드와 동일코드
//        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
//        tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
//        tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
//        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.leftAnchor.constraint(equalTo: view.leftAnchor),
            tableView.rightAnchor.constraint(equalTo: view.rightAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }

    @IBAction func notification(_ sender: Any) {
        if let controller = self.storyboard?.instantiateViewController(withIdentifier: "notification") {
            //controller = navi
            self.navigationController?.pushViewController(controller, animated: true)
        }    //ViewCon_Setting에서 notification를 불러온다.
    }
    
    @IBAction func good(_ sender: Any) {
        if let controller = self.storyboard?.instantiateViewController(withIdentifier: "good") {
            //controller = navi
            self.navigationController?.pushViewController(controller, animated: true)
        }    //ViewCon_Setting에서 good를 불러온다.
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
//테이블 뷰의 셀 갯수나 셀의 사이즈 정하기
extension ViewCon_Setting : UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myPageMenu.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CellID, for: indexPath) as! MyPageCell
        
        cell.menuLabel.text = myPageMenu[indexPath.row]
        cell.accessoryType = .disclosureIndicator
        cell.backgroundColor = .red
        
        return cell
    }
}

extension ViewCon_Setting : UITableViewDelegate {
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = HeaderVIew()
        
        header.backgroundColor = .yellow
        
        return header
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 180
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
