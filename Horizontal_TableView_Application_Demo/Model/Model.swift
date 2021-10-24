//
//  Model.swift
//  Horizontal_TableView_Application_Demo
//
//  Created by 준수김 on 2021/10/24.
//

struct Model {
    let imageName: String //음식 사진
    let title: String //음식 이름
    let price: String //음식 가격
        
    init(imageName: String, title:String, price: String) {
        self.imageName = imageName
        self.title = title
        self.price = price
    }
}
