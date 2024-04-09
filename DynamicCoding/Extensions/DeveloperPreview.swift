//
//  DeveloperPreview.swift
//  DynamicCoding
//
//  Created by 王佩豪 on 2024/4/8.
//

import Foundation

// 这里用来存放用于演示的数据
class DeveloperPreview{
    
    static let shared = DeveloperPreview()
    
    var listing:[Listing] = [
        .init(name: "王佩豪", age: "23", gender: "MAN", country: "CHINA", city: "天津"),
        .init(name: "郭欣宇", age: "24", gender: "WOMAN", country: "CHINA", city: "山西"),
        .init(name: "张梓怡", age: "20", gender: "WOMAN", country: "CHINA", city: "西安"),
        .init(name: "Jane", age: "26", gender: "WOMAN", country: "CHINA", city: "台湾"),
    ]
}
