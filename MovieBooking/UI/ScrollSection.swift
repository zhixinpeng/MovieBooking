//
//  ScrollSection.swift
//  MovieBooking
//
//  Created by 彭智鑫 on 2022/10/12.
//

import SwiftUI

struct ScrollSection: View {
    @State var title = "Now Playing"
    
    @State var posters: [String] = ["poster1", "poster2", "poster3", "poster4", "poster5", "poster6"]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
                .padding(.horizontal, 20)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20.0) {
                    ForEach(posters, id: \.self) { post in
                        NavigationLink {
                            BookingView()
                        } label: {
                            Image(post)
                                .resizable()
                                .frame(width: 100, height: 130)
                                .cornerRadius(20)
                        }
                    }
                }
                .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
            }
        }
    }
}

struct ScrollSection_Previews: PreviewProvider {
    static var previews: some View {
        ScrollSection()
    }
}
