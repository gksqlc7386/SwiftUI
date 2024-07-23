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

/*
 
 ViewModel을 사용하는 이유
 : 간단한 앱은 몰라도 복잡한 앱에서 데이터베이스와 관련해서 무언가를 변경하고 싶을 때
   데이터의 어떤 부분이 뷰의 어떤 부분인지 파악하고, 뷰를 살피는 시간을 절약할 수 있음
   -> 바로 ViewModel에서 데이터와 관련된 비즈니스 로직을 확인 및 변경 가능
 
 */


//ObservableObject 는 @ObservedObject를 사용하기 위해서는 관찰 가능한 클래스라는 것을 표시해야함
class FruitViewModel: ObservableObject {
    
    // @Published는 클래스 내에 있다는 점을 제외하면 @State와 동일 (클래스 자체에 ViewModel을 알림)
    @Published var fruitArray: [FruitModel] = []
    @Published var isLoading: Bool = false
    
    func getFruits() {
        let fruit1 = FruitModel(name: "Orange", count: 6)
        let fruit2 = FruitModel(name: "Peach", count: 97)
        let fruit3 = FruitModel(name: "Watermelon", count: 82)
         
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)
            self.isLoading = false
        }
    }
    
    func deleteFruit(index: IndexSet) {
        fruitArray.remove(atOffsets: index)
    }
}



struct ViewModelPractice: View {
    
    //@State var fruitArray: [FruitModel] = []
    //@ObservedObject는 ViewModel에 @Published로 클래스에 변화를 알리는 거 처럼 뷰에도 뷰모델로 인한 변화를 알려야하는 데 그 때 사용
    //@ObservedObject var fruitViewModel: FruitViewModel = FruitViewModel()
    
    //@StateObject -> Use this on creation || init (생성하거나 초기화할 때)
    //@ObservedObject -> Use this for subviews 
    @StateObject var fruitViewModel: FruitViewModel = FruitViewModel()
    
    var body: some View {
        NavigationView {
            List {
                if fruitViewModel.isLoading {
                    ProgressView()
                } else {
                    ForEach(fruitViewModel.fruitArray) { fruit in
                        HStack {
                            Text("\(fruit.count)")
                                .foregroundStyle(.blue)
                            Text(fruit.name)
                                .font(.headline)
                                .bold()
                        }
                    }
                    .onDelete(perform: fruitViewModel.deleteFruit)
                }
            }
            .navigationTitle("Fruit List")
            .onAppear {
                fruitViewModel.getFruits()
            }
        }
    }
}

#Preview {
    ViewModelPractice()
}
