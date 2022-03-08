//
//  SideBar.swift
//  SwiftUI-AdaptiveDesign-MVVM
//
//  Created by Alexander Sobolev on 08.03.2022.
//

import SwiftUI

struct SideBar: View {
  @Binding var currentMenu: String
  var prop: Properties
    var body: some View {
      ScrollView(.vertical, showsIndicators: false) {
        VStack(alignment: .leading, spacing: 20) {
          Image("Logo1")
            .resizable()
            .scaledToFill()
            .frame(width: 80, height: 80, alignment: .leading)
          // 7:01
          SidebarButton(icon: "tray.and.arrow.down.fill", title: "Inbox")
            .padding(.top, 40)
          SidebarButton(icon: "paperplane", title: "Sent")
          SidebarButton(icon: "doc.fill", title: "Draft")
          SidebarButton(icon: "trash", title: "Delited")
        }
        .padding()
      }
      // MAX SIZE
      .frame(width: prop.size.width / 2.5 > 300 ? 300 : prop.size.width / 2.5)
      .background {
        Color("LightWhite")
          .ignoresSafeArea()
      }
    }
  // MARK: - SideBar Buttons
  @ViewBuilder
  func SidebarButton(icon: String, title: String) -> some View {
    Button {
      currentMenu = title
    } label: {
     
      VStack {
        
        HStack(spacing: 10) {
          
          Image(systemName: "chevron.right")
            .font(.caption)
            .foregroundColor(.black)
            .opacity(currentMenu == title ? 1 : 0)
          
          Image(systemName: icon)
            .font(.callout)
            .foregroundColor(currentMenu == title ? Color("DarkBlue") : .gray)
          
          Text(title)
            .font(.callout)
            .fontWeight(.semibold)
            .foregroundColor(currentMenu == title ? .black : .gray)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        
        Divider()
      }
    }
  }
}

struct SideBar_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
