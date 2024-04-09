//
//  ListingView.swift
//  DynamicCoding
//
//  Created by 王佩豪 on 2024/4/8.
//

import SwiftUI

struct ListingView: View {
    
    //ListingView如果想使用动态编码，肯定要声明viewModel，这样才能引用
    let listing:Listing
    
    
    init(listing:Listing){
        self.listing = listing
        
    }
    
    var body: some View {
        VStack(alignment:.leading,spacing: 10){
            HStack{
                VStack(alignment:.trailing,spacing: 10){
                    Text("Name:")
                    Text("Age:")
                    Text("Gender:")
                    Text("Country:")
                    Text("City:")
                }
                VStack(alignment:.leading,spacing: 10){
                    Text(listing.name)
                    Text(listing.age)
                    Text(listing.gender)
                    Text(listing.country)
                    Text(listing.city)
                }
                .padding()
            }
            .padding()
            Spacer()
            
        }
        .font(.title)
        .frame(width:350,height:235)
        .overlay{
            RoundedRectangle(cornerRadius: 10)
                .stroke(lineWidth:2)
                .foregroundColor(.black)
        }
        
    }
}

#Preview {
    //在这里传入的时候不只是需要写它的类型，而是具体的出处，从哪里来的
    ListingView(listing: DeveloperPreview.shared.listing[0])
}
