//
//  BackgroundAndOverlayPractice.swift
//  SwiftuiPractice
//
//  Created by 김한빛 on 7/15/24.
//

import SwiftUI


    // MARK: - Background

//struct BackgroundAndOverlayPractice: View {
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .background(
//                //Color.red
////                LinearGradient(
////                    colors: [Color.red, Color.blue],
////                    startPoint: .top,
////                    endPoint: .bottom)
//                Circle()
//                    .fill(Color.green) //색상 변경 가능
//                    .frame(width: 120, height: 120)
//            )
//            .background(
//                Circle()
//                    .fill(Color.yellow)
//                    .frame(width: 140, height: 140, alignment: .center)
//            )
//    }
//}


    // MARK: - Overlay

//struct BackgroundAndOverlayPractice: View {
//    var body: some View {
//        Circle()
//            .fill(Color.orange)
//            .frame(width: 100, height: 100)
//            .overlay(
//                Text("1")
//                    .foregroundStyle(.blue)
//                    .font(.largeTitle)
//            )
//            .background(
//                Circle()
//                    .fill(Color.blue)
//                    .frame(width: 110, height: 110)
//            )
//    }
//}


    // MARK: - Overlay2

//struct BackgroundAndOverlayPractice: View {
//    var body: some View {
//        Rectangle()
//            .frame(width: 100, height: 100)
//            .overlay(
//                Rectangle()
//                    .fill(Color.green)
//                    .frame(width: 50, height: 50)
//                , alignment: .topLeading
//            )
//            .background(
//                Rectangle()
//                    .fill(Color.yellow)
//                    .frame(width: 150, height: 150)
//                , alignment: .bottomTrailing
//            )
//            
//    }
//}

// MARK: - Overlay3


struct BackgroundAndOverlayPractice: View {
    var body: some View {
        Image(systemName: "drop.fill")
            .font(.system(size: 60))
            .foregroundColor(.blue)
            .background(
                Circle()
                    .fill(
                        LinearGradient(colors: [Color.blue, Color.white], startPoint: .topLeading, endPoint: .bottomTrailing)
                    )
                    .frame(width: 160, height: 160)
                    .shadow(color: .gray, radius: 10, x: 0.0, y: 10.0)
                    .overlay(
                        Circle()
                            .frame(width: 50, height: 50)
                            .overlay(
                                Text("5")
                                    .foregroundStyle(Color.white)
                                    .font(.title2)
                            )
                            .shadow(color: .gray, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x:0.0, y: 10.0)
                        ,alignment: .bottomTrailing
                    )
            )
    }
}

#Preview {
    BackgroundAndOverlayPractice()
}
