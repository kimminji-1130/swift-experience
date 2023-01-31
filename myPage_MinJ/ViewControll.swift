//
//  ViewControll.swift
//  School-Plan
//
//  Created by 민지 on 2023/01/17.
//

import UIKit

private let cellID = "TestCell"
//let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext

class ViewControll: UIViewController {

    // Proparties
    let FirstMenuArray = ["좋아요"]
    let SecondMenuArray = ["알림 설정", "다크모드/일반모드"]
    let tableview = UITableView()
    // Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureUI()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        navigationController?.navigationBar.isHidden = true
    }
    override func viewDidDisappear(_ animated: Bool) {
       
        navigationController?.navigationBar.isHidden = false
    }
        // Melpars
    func configureUI() {
        view.addSubview(tableview)
        
        tableview.translatesAutoresizingMaskIntoConstraints = false  //얘 없으면 코드 인식 못함
        
        tableview.register(TestCell.self, forCellReuseIdentifier: cellID)
        tableview.dataSource = self
        tableview.delegate = self
        
        tableview.backgroundColor = .green //헤더 윗 부분 색 지정
        tableview.separatorStyle = .none //테이블 뷰 없앰
        
        tableview.tableFooterView = UIView()
        
        tableview.tableHeaderView = headerTop(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 200)) //닉네임 사진 넣는 곳 크기지정
        
 //       tableview.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor)

        NSLayoutConstraint.activate([
            tableview.topAnchor.constraint(equalTo: view.topAnchor),
            tableview.leftAnchor.constraint(equalTo: view.leftAnchor),
            tableview.rightAnchor.constraint(equalTo: view.rightAnchor),
            tableview.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
//                tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
//                tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
//                tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
//                tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
   }

    // MARK: - Navigation

}

extension ViewControll: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return FirstMenuArray.count
        }else{
            return SecondMenuArray.count
        }
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as! TestCell
        
        if indexPath.section == 0 {
            cell.textLabel?.text = FirstMenuArray[indexPath.row] //[indexPath.row] 이 아이로 인해 순서대로 들어감
        }else{
            cell.textLabel?.text = SecondMenuArray[indexPath.row]
        }
        
        return cell
    }
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) -> UIView? {
        if(section == 0){
            let header = FirstSection()
            return header
        }else {
            let header = SecondSection()
            return header
        }
    }
}
extension ViewControll: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 55
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 0 {
            return 50
        }else {
            return 60
        }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {// 버튼 눌렀를때의 반응 다음페이지로 넘어가기 등등
        
        if indexPath.section == 0 {
            switch indexPath.row {
            case 0:
                let controller = notifi()
                
                navigationController?.pushViewController(controller, animated: true)
                //다음페이지 더 만들땐 여기에 case붙여서 더 만들면 됨
            default:
                let controller = notifi()
                
                navigationController?.pushViewController(controller, animated: true)
            }
        } //else {
//            switch indexPath.row {
//            case 0:
// 다른 라인 코드 넣을 시 else문 필요함
//            default:
//
//            }
//        }
        

    }
    

    
}

