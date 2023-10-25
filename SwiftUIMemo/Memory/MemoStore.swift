//
//  MemoStore.swift
//  SwiftUIMemo
//
//  Created by Teameverywhere on 10/25/23.
//

import Foundation

//메모 목록을 저장할꺼임
class MemoStore: ObservableObject {
    @Published var list: [Memo] //Published: 배열을 업데이트 할 때 마다 바인딩 되어있는 UI 자동 업데이트
    
    init(){
        list = [
            Memo(content: "Hello", insertDate: Date.now),
            Memo(content: "Awesome", insertDate: Date.now.addingTimeInterval(3600 * -24)),
            Memo(content: "SwiftUI", insertDate: Date.now.addingTimeInterval(3600 * -48))
        ]
    }
    
    
    func insert(memo: String){
        list.insert(Memo(content: memo), at: 0)
    }
    
    func update(memo: Memo?, content: String){
        guard let memo = memo else{
            return
        }
        
        memo.content = content
    }
    
    func delete(memo: Memo){
        list.removeAll{$0.id == memo.id}
    }
    
    func delete(set: IndexSet){
        for index in set{
            list.remove(at: index)
        }
    }
}
