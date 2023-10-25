//
//  MemoCell.swift
//  SwiftUIMemo
//
//  Created by Teameverywhere on 10/25/23.
//

import Foundation
import SwiftUI


//뷰 분리
struct MemoCell: View {
    @ObservedObject var memo: Memo
    
    var body: some View {
        VStack(alignment: .leading){
            Text(memo.content)
                .font(.body)
                .lineLimit(1)
            
            Text(memo.insertDate, style: .date)
                .font(.caption)
                .foregroundColor(.secondary)
        }
    }
}

struct MemoCell_Previews: PreviewProvider {
    static var previews: some View {
        MemoCell(memo: Memo(content: "Test"))
    }
}
