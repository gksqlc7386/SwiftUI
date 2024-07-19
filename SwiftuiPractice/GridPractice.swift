//
//  GridPractice.swift
//  SwiftuiPractice
//
//  Created by 김한빛 on 7/19/24.
//

import SwiftUI

struct GridPractice: View {
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil)
    ]
    
    var body: some View {
        ScrollView {
            
            Rectangle()
                .fill(Color.yellow)
                .frame(height: 400)
            
            LazyVGrid(columns: columns,
                      alignment: .center,
                      spacing: 6,
                      pinnedViews: [.sectionHeaders],
                      content: {
                        Section(header: 
                                    Text("Section 1")
                                    .foregroundStyle(Color.white)
                                    .font(.title)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .background(Color.green)
                                    .padding()
                        ) {
                            ForEach(0..<20) { index in
                                Rectangle()
                                    .fill(Color.indigo)
                                    .frame(height: 150)
                            }
                        }
                        Section(header:
                                    Text("Section 2")
                                    .foregroundStyle(Color.white)
                                    .font(.title)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .background(Color.green)
                                    .padding()
                                
                        ) {
                            ForEach(0..<20) { index in
                                Rectangle()
                                    .fill(Color.orange)
                                    .frame(height: 150)
                            }
                        }
            })
        }
    }
    
//
//    let columns: [GridItem] = [
//        
//        GridItem(.fixed(50), spacing: nil, alignment: nil), //사이즈가 숫자대로 고정
//
//        GridItem(.flexible(), spacing: nil, alignment: nil), //유연성이 있어 사용 가능한 공간에 맞춰 크기가 조정됨
//
//        GridItem(.adaptive(minimum: 10, maximum: 300), spacing: nil, alignment: nil),
//        GridItem(.adaptive(minimum: 150, maximum: 300), spacing: nil, alignment: nil) //가능한 경우 여러 항목이 행에 맞춰짐
//
//        GridItem(.flexible(), spacing: nil, alignment: nil),
//        GridItem(.flexible(), spacing: nil, alignment: nil),
//        GridItem(.flexible(), spacing: nil, alignment: nil)
//    ]
//    
//    var body: some View {
//        ScrollView {
//              
//            Rectangle()
//                .foregroundColor(Color.white)
//                .frame(height: 400)
//            
//            LazyVGrid( columns: columns ) {
//                ForEach(0..<50) { index in
//                    Rectangle()
//                        .frame(height: 150)
//                }
//            }
//        }
//    }
    
}

#Preview {
    GridPractice()
}
