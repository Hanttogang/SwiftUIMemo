//
//  Memo.swift
//  SwiftUIMemo
//
//  Created by Teameverywhere on 10/25/23.
//

import Foundation
import SwiftUI

class Memo: Identifiable, ObservableObject { // 1. Identifiable: 데이터를 리스트에 쉽게 바인딩, 2. ObservableObject: 메모를 편집할 때, 뷰를 자동으로 업데이트
    let id: UUID
    @Published var content: String // Published: 새로운 값을 저장할 때 마다 바인딩 되어있는 UI가 자동으로 업데이트
    let insertDate: Date
    
    init(content: String, insertDate: Date = Date.now) {
        id = UUID()
        self.content = content
        self.insertDate = insertDate
    }
    
}
