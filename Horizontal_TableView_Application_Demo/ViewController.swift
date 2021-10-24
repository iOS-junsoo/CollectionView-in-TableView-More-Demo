//
//  ViewController.swift
//  Horizontal_TableView_Application_Demo
//
//  Created by 준수김 on 2021/10/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    
    var models = [Model]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTableView()
    }
    
    //MARK: - nib파일 등록과 delegate, dataSource 선언
    func setUpTableView() {
        models.append(Model(imageName: "공기밥", title: "따끈따끈한 공기밥", price: "1000원"))
        models.append(Model(imageName: "라면", title: "호로록 라면", price: "3500원"))
        models.append(Model(imageName: "샤브샤브", title: "부글부글 샤브샤브", price: "11000원"))
        models.append(Model(imageName: "공기밥", title: "따끈따끈한 공기밥", price: "1000원"))
        models.append(Model(imageName: "라면", title: "호로록 라면", price: "3500원"))
        models.append(Model(imageName: "샤브샤브", title: "부글부글 샤브샤브", price: "11000원"))
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "firstCollectionTableViewCell", bundle: nil), forCellReuseIdentifier: "firstCollectionTableViewCell") //nib 파일 등록
        tableView.separatorStyle = .none //cell 구분선 없애기
        
    }


}

    //MARK: - 테이블 뷰 구성
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { //cell의 갯수 설정
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell { //cell의 데이터 구성
        let cell = tableView.dequeueReusableCell(withIdentifier: "firstCollectionTableViewCell", for: indexPath) as! firstCollectionTableViewCell
        cell.configure(with: models)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat { //cell의 높이 설정
        return 240
    }
}

