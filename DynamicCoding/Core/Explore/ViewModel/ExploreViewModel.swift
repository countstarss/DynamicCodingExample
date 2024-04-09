//
//  ExploreViewModel.swift
//  DynamicCoding
//
//  Created by 王佩豪 on 2024/4/8.
//

import Foundation

class ExploreViewModel:ObservableObject{
    // 首先声明公共的listing
    @Published var listing = [Listing]()
    
    //创建服务
    private let service:ExploreService
    
    //初始化服务
    init(service:ExploreService){
        self.service = service
        
        //创建任务，等待获取Listing
        Task{
            await fetchListing()
        }
    }
    
    func fetchListing() async {
        do{
            self.listing = try await service.fetchListings()
        }catch{
            print("Debug:fail to fetch listing with error,\(error.localizedDescription)")
        }
    }
}
