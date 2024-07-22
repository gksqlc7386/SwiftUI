//
//  OnAppearPractice.swift
//  SwiftuiPractice
//
//  Created by 김한빛 on 7/22/24.
//

import SwiftUI

struct OnAppearPractice: View {
    
    @State var myText: String = "Start text."
    @State var count: Int = 0
    
    var body: some View {
        NavigationView {
            ScrollView {
                Text(myText)
                
                LazyVStack {
                    ForEach(0..<50) { _ in
                        RoundedRectangle(cornerRadius: 25.0)
                            .frame(height: 200)
                            .padding()
                            .onAppear {
                                count += 1
                            }
                    }
                }
            }
            .onAppear(perform: {
                DispatchQueue.main.asyncAfter(deadline: .now() + 5, execute: {
                    myText = "This is new Text"
                })
            })
            .onDisappear(perform: {
                myText = "Ending Text."
            } )
            .navigationTitle("OnAppear : \(count)")
        }
    }
}

#Preview {
    OnAppearPractice()
}
