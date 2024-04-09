//
//  ExploreService.swift
//  DynamicCoding
//
//  Created by 王佩豪 on 2024/4/8.
//

import Foundation

//在这里通过ExploreService获取到DeveloperPreview中shared出的数据
class ExploreService{
    func fetchListings() async throws -> [Listing]{
        return DeveloperPreview.shared.listing
    }
}
