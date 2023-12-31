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
            
            
            List {
                ForEach(store.list) { memo in
                    NavigationLink {
                        DetailView(memo: memo)
                    } label: {
                        MemoCell(memo: memo)
                    }
                }
                .onDelete(perform: store.delete)
            }
            .listStyle(.plain)
            .navigationTitle("내 메모")
            .toolbar {
                Button{
                    showComposer = true
                }label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $showComposer, content: {
                ComposeView()
            })
        }
        .navigationViewStyle(.stack)
    }
}


struct MainList_Previews: PreviewProvider {
    static var previews: some View {
        MainListView()
            .environmentObject(MemoStore())
    }
}

//
//#Preview {
//        
//    MainListView()
//        .environmentObject(MemoStore())
//}



