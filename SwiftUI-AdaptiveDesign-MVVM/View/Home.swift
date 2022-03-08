//
//  Home.swift
//  SwiftUI-AdaptiveDesign-MVVM
//
//  Created by Alexander Sobolev on 08.03.2022.
//

import SwiftUI

struct Home: View {
  @State var currentMenu: String = "Inbox"
  @State var showMenu: Bool = false
  var body: some View {
    ResponsiveView { prop in
      HStack(spacing: 0) {
        if prop.isLandscape {
          SideBar(currentMenu: $currentMenu, prop: prop)
        } // 7:01
      }
      .frame(maxWidth: .infinity, maxHeight: .infinity)
      .overlay {
        ZStack(alignment: .leading) {
          if !prop.isLandscape {
            Color.black.opacity(showMenu ? 0.25 : 0)
              .ignoresSafeArea()
            SideBar(currentMenu: $currentMenu, prop: prop)
          }
        }
      }
    }
  }
}

struct Home_Previews: PreviewProvider {
  static var previews: some View {
    Home()
  }
}
