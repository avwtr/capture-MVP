//
//  SideMenuViewModel.swift
//  capture-mvp
//
//  Created by Alex Vawter on 2/1/23.
//

import Foundation


enum SideMenuViewModel: Int, CaseIterable{
    case settings
    case signout
    
    var description: String {
        switch self{
        case .settings: return "Settings"
        case .signout: return "Signout"
        }
    }
    
    var imageName: String {
        switch self {
        case .settings: return "gear"
        case .signout: return "arrow.left.square"
        }
    }
}
