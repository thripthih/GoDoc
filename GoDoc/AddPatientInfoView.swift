//
//  AddPatientInfoView.swift
//  GoDoc
//
//  Created by Thripthi Haridas on 13/07/24.
//

import SwiftUI

struct AddPatientInfoView: View {
    @State private var registrationNumber: String = "Auto"
    @State private var registrationDate: Date = Date()
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    @State private var title: String = ""
    @State private var gender: String = "Other"
    @State private var bloodGroup: String = ""
    @State private var mobileNumber: String = ""
    
    var titles = ["Mr.", "Ms.", "Dr."]
    var genders = ["Male", "Female", "Other"]
    var bloodGroups = ["A+", "A-", "B+", "B-", "AB+", "AB-", "O+", "O-"]
    
    var body: some View {
        HeaderView()
        
        VStack(alignment: .leading) {
            Text("Basic Details")
                .font(.title)
                .fontWeight(.bold)
                .padding(.bottom, 10)
            
            HStack(alignment: .top) {
                VStack(alignment: .leading) {
                    Image(systemName: "person.crop.square")
                        .resizable()
                        .frame(width: 100, height: 100)
                        //.background(Color.green)
                        .cornerRadius(10)
                    
                    Button(action: {
                        // Image selection action
                    }) {
                        Text("Select Image")
                    }
                }
                .frame(maxWidth: .infinity,alignment: .leading)
                
                VStack(alignment: .leading) {
                    Text("Registration Date")
                        //Spacer()
                        DatePicker("", selection: $registrationDate, displayedComponents: .date)
                            .labelsHidden()
                            .frame(height: 54)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(Color.gray.opacity(0.2))
                }
                
                VStack(alignment: .leading) {
                    
                }
                .frame(maxWidth: .infinity)
            }
            .padding(.bottom, 20)
            
           // HStack(){
                HStack(spacing: 20) {
                    VStack(alignment: .leading) {
                        Text("Title")
                        Picker(selection: $title, label: Text("")) {
                            ForEach(titles, id: \.self) {
                                Text($0)
                            }
                        }
                        .pickerStyle(MenuPickerStyle())
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .frame(height: 54)
                        .background(Color.gray.opacity(0.2))
                    }
                    
                    VStack(alignment: .leading) {
                        Text("First Name")
                        TextField("First", text: $firstName)
                            .padding()
                            .background(Color.gray.opacity(0.2))
                            .cornerRadius(5)
                            .frame(maxWidth: .infinity)
                    }
                    
                    VStack(alignment: .leading) {
                        Text("Last Name")
                        TextField("Last", text: $lastName)
                            .padding()
                            .background(Color.gray.opacity(0.2))
                            .cornerRadius(5)
                            .frame(maxWidth: .infinity)
                    }
                }
          //  }
            
            HStack(spacing: 20) {
                VStack(alignment: .leading, spacing: 15) {
                    HStack {
                        RadioButtonGroup(items: ["Date Of Birth", "Age"], selectedId: .constant("Date Of Birth"))
                        Spacer()
                        TextField("Age", text: .constant(""))
                            .padding()
                            .background(Color.gray.opacity(0.2))
                            .cornerRadius(5)
                            .frame(width: 150)
                            .disabled(true)
                    }
                    
                    
                }
                
                VStack(alignment: .leading, spacing: 15) {
                   
                    
                 
                }
            }
            
            HStack(spacing: 20) {
                VStack(alignment: .leading) {
                    Text("Gender")
                    Picker(selection: $gender, label: Text("")) {
                        ForEach(genders, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(MenuPickerStyle())
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .frame(height: 54)
                    .background(Color.gray.opacity(0.2))
                }
                
                VStack(alignment: .leading) {
                    Text("Blood Group")
                    Picker(selection: $bloodGroup, label: Text("")) {
                        ForEach(bloodGroups, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(MenuPickerStyle())
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .frame(height: 54)
                    .background(Color.gray.opacity(0.2))
                }
                
                VStack(alignment: .leading) {
                    Text("Mobile No")
                    TextField("Mobile No", text: $mobileNumber)
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(5)
                        .frame(maxWidth: .infinity)
                }
            }
            
            Text("Contact Details")
                .font(.title)
                .fontWeight(.bold)
                .padding(.top, 20)
                .padding(.bottom, 20)
            
            HStack(spacing: 20) {
                VStack(alignment: .leading) {
                    Text("Email")
                    TextField("Email", text: $firstName)
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(5)
                        .frame(maxWidth: .infinity)
                }
                
                VStack(alignment: .leading) {
                    
                }
                .frame(maxWidth: .infinity)
                
                VStack(alignment: .leading) {
                    
                }
                .frame(maxWidth: .infinity)
            }
            
            HStack(spacing: 20) {
                VStack(alignment: .leading) {
                    Text("Address")
                    TextField("Address", text: $firstName)
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(5)
                        .frame(maxWidth: .infinity)
                }
                
            }
            
            VStack(alignment: .center) {
                Button(action: {
                    // self.isActive = true
                }) {
                    Text("Save")
                        .fontWeight(.heavy)
                        .font(.title3)
                        .frame(maxWidth: .infinity)
                        .frame(height: 45)
                        .padding()
                        .foregroundColor(.white)
                        .background(LinearGradient(gradient: Gradient(colors: [.blue, .purple]), startPoint: .leading, endPoint: .trailing))
                        .cornerRadius(40)
                }
                .frame(width: 500)
                .padding(.top, 30)
            }
            .frame(maxWidth: .infinity)
            
            Spacer()
        }
        .padding(35)
    }
}

struct RadioButtonGroup: View {
    let items: [String]
    @Binding var selectedId: String
    
    var body: some View {
        HStack {
            ForEach(items, id: \.self) { item in
                HStack {
                    Circle()
                        .fill(self.selectedId == item ? Color.blue : Color.gray)
                        .frame(width: 20, height: 20)
                        .onTapGesture {
                            self.selectedId = item
                        }
                    Text(item)
                }
            }
        }
    }
}

#Preview {
    AddPatientInfoView()
}
