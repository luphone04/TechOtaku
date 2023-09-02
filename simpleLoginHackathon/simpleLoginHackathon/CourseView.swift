//
//  ToDoListsView.swift
//  ToDoList
//
//  Created by Sei Mouk on 26/8/23.
//
import FirebaseFirestoreSwift
import SwiftUI

struct CourseView: View {
    @StateObject var viewModel : CourseViewViewModel
    @StateObject var viewModelForLogout = LogoutViewModel()
 
    private let userId: String
    init(userId: String){
        self.userId = userId
       
        self._viewModel = StateObject(wrappedValue: CourseViewViewModel(userId: userId))
    }
    
    var body: some View {
        NavigationView {
           
               Text("CourseViewForDOc")
        }
        Button("Logout"){
            viewModelForLogout.logOut()
        }.padding()
        Spacer()
    }
}

struct CourseView_Previews: PreviewProvider {
    static var previews: some View {
        CourseView(userId: "cc721nt3T7Nzd8mz4RvtQw9htNy2")
    }
}
