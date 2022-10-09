//
//  loginTestApp.swift
//  loginTest
//
//  Created by Elizabeth Ponce on 10/8/22.
//

import SwiftUI

@main
struct loginTestApp: App {
    
    @StateObject var userStateViewModel = UserStateViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ApplicationSwitcher()
            }
            .navigationViewStyle(.stack)
            .environmentObect(userStateViewModel)
        }
    }
}


struct ApplicationSwitcher : View {
    
    @EnvironmentObject var vm: UserStateViewModel
    
    var body : some View {
        if (vm.isLoggedIn){
            HomeScreen()
        } else {
            LoginScreen()
        }
    }
}
