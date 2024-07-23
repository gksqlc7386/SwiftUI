//
//  NavigationViewPractice.swift
//  SwiftuiPractice
//
//  Created by 김한빛 on 7/22/24.
//

import SwiftUI

struct NavigationViewPractice: View {
    var body: some View {
        NavigationView {
            ScrollView {
                NavigationLink("Hello, World!",
                               destination: MyOtherScreen() )
                
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
            }
            .navigationTitle("all Inboxes")
            //.navigationBarTitleDisplayMode(.inline)
            //.navigationBarHidden(true)
            .navigationBarItems(
                leading: 
                    HStack {
                        Image(systemName: "flame.fill")
                        Image(systemName: "person.fill")
                    },
                
                trailing:
                    NavigationLink(
                        destination: MyOtherScreen(),
                        label: {
                            Image(systemName: "gear")
                        })
                        .accentColor(.black)
                
            )
        }
    }
}

struct MyOtherScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color.cyan.ignoresSafeArea()
                .navigationTitle("Cyan Screen")
            
            VStack {
                Button("BACK BUTTON", action: {
                    presentationMode.wrappedValue.dismiss()
                })
                .accentColor(.black)
                NavigationLink("Move to 3rd Screen", destination: Text("3rd Screen"))
                    .accentColor(.white)
            }
        }
    }
}

#Preview {
    NavigationViewPractice()
}

                
                
