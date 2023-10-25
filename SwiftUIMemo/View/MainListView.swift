//
//  MainListView.swift
//  SwiftUIMemo
//
//  Created by Teameverywhere on 10/25/23.
//

import SwiftUI

struct MainListView: View {
    @EnvironmentObject var store: MemoStore
    
    @State private var showComposer: Bool = false
    
    
    
    
    var body: some View {
        
        NavigationView {
                List(store.list) {memo in
                    MemoCell(memo: memo)
                }
                .listStyle(.plain)
                .navigationTitle("내 메모")
                .toolbar {
                    Button(action: {
                        showComposer = true
                    }, label: {
                        Image(systemName: "plus")
                    })
                }
                .sheet(isPresented: $showComposer, content: {
                    ComposeView()
                })
        }
    }
}

#Preview {
    MainListView()
        .environmentObject(MemoStore())
}



