//
//  CustomeSwiftuiTableCell.swift
//  GenericTableView
//
//  Created by Nitesh Kumar Pal on 09/08/21.
//

import SwiftUI

struct CustomeSwiftuiTableCell: View {
    
    static var id: String = "CustomeSwiftuiTableCell"
    
    var body: some View {
        
        VStack(alignment: .center) {
            Text("Hello, SwiftUI World!")
                .foregroundColor(.secondary)
                .frame(width: UIScreen.main.bounds.width, height: 160, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        }.background(Color.green)
    }
}

struct CustomeSwiftuiTableCell_Previews: PreviewProvider {
    static var previews: some View {
        CustomeSwiftuiTableCell()
    }
}
