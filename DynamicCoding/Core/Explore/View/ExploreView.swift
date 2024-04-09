//
//  ExploreView.swift
//  DynamicCoding
//
//  Created by 王佩豪 on 2024/4/8.
//

import SwiftUI

struct ExploreView: View {
    
    @State var viewModel = ExploreViewModel(service: ExploreService())


    var body: some View {
        VStack{
            ScrollView{
                ForEach(viewModel.listing,id:\.self){ listing in
                    ListingView(listing: listing)
                        .padding()
                }
            }
        }
    }
}

#Preview {
    ExploreView()
}
