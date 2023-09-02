//
//  RegisterView.swift
//  ToDoList
//
//  Created by Sei Mouk on 26/8/23.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewViewModel()
 
    var body: some View {
        VStack{
            HeaderView( title: "Register",
                                subtitle: "Start learning now ",
                                  angle: -15,
                                  backgroundcolor: .pink)
            
            if !viewModel.errorMessage.isEmpty{
                Text(viewModel.errorMessage).foregroundColor(Color.red)
            }
                TextField("Full Name",text: $viewModel.name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .padding(.horizontal,20)
                    .padding(.vertical,10)
                TextField("Email",text: $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                    .autocapitalization(.none)
                    .padding(.horizontal,20)
                    .padding(.vertical,10)
                SecureField("Password",text: $viewModel.password)
                    .autocorrectionDisabled()
                    .autocapitalization(.none)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .padding(.horizontal,20)
                    .padding(.vertical,10)        
                TDLButton(title: "Create an account", backgroundcolor: .green ){
                    //to attempt register
                    viewModel.register()
                }
            
           
            Spacer()
        }

    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
