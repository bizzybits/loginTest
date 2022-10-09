//
//  LoginScreenView.swift
//  loginTest
//
//  Created by Elizabeth Ponce on 10/8/22.
//

import SwiftUI

struct LoginScreenView: View {
    
    @EnvironmentObject var vm: UserStateViewModel
    @State var email = ""
    @State var password = ""
    
    fileprivate func EmailInput() -> some View {
        TextField("Email", text: $email)
            .keyboardType(.emailAddress)
            .disableAutocorrection(true)
            .autocapitalization(.none)
            .textFieldStyle(.roundedBorder)
    }
    
    fileprivate func PasswordInput() -> some View {
        
        
    }
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct LoginScreenView_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreenView()
    }
}
