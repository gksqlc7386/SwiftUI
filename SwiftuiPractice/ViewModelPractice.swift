//
//  ViewModelPractice.swift
//  SwiftuiPractice
//
//  Created by 김한빛 on 7/22/24.
//

import SwiftUI

struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}

struct ViewModelPractice: View {
    
    @State var fruitArray: [FruitModel] = [
        FruitModel(name: "Apples", count: 5)
    ]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruitArray) { fruit in
                    HStack {
                        Text("\(fruit.count)")
                            .foregroundStyle(.blue)
                        Text(fruit.name)
                            .font(.headline)
                            .bold()
                    }
                }
            }
            .navigationTitle("Fruit List")
        }
    }
}

#Preview {
    NavigationView {
        ViewModelPractice()
    }
}
