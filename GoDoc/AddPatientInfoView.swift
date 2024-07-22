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
    @State private var address: String = ""
    @State private var title: String = ""
    @State private var gender: String = "Other"
    @State private var bloodGroup: String = ""
    @State private var mobileNumber: String = ""
    @State private var postCode: String = ""
    @State private var state: String = ""
    @State private var city: String = ""
    @State private var showAlert: Bool = false
    @State private var responseMessage: String? = nil
    @State private var errorDetails: [APIErrorDetail] = []
    
    var titles = ["Mr.", "Ms.", "Dr."]
    var genders = ["Male", "Female", "Other"]
    var bloodGroups = ["A+", "A-", "B+", "B-", "AB+", "AB-", "O+", "O-"]
    
    var body: some View {
        HeaderView()
        
        ScrollView {
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
                    Text("Referred By")
                    TextField("Referred By", text: $firstName)
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(5)
                        .frame(maxWidth: .infinity)
                }
                
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
            }
            
            HStack(spacing: 20) {
                VStack(alignment: .leading) {
                    Text("Address")
                    TextField("Address", text: $address)
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(5)
                        .frame(maxWidth: .infinity)
                }
                
            }
            
            HStack(spacing: 20) {
                VStack(alignment: .leading) {
                    Text("Post Code")
                    TextField("Post Code", text: $postCode)
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(5)
                        .frame(maxWidth: .infinity)
                }
                
                VStack(alignment: .leading) {
                    Text("State")
                    TextField("State", text: $state)
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(5)
                        .frame(maxWidth: .infinity)
                }
                
                VStack(alignment: .leading) {
                    Text("City")
                    TextField("City", text: $city)
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(5)
                        .frame(maxWidth: .infinity)
                }
            }
            
            Text("Medical Details")
                .font(.title)
                .fontWeight(.bold)
                .padding(.top, 20)
                .padding(.bottom, 20)
            
            Text("Is the patient allergic to any of the following.")
                .font(.title)
                .padding(.bottom, 15)
            
            HStack(spacing: 20) {
                VStack(alignment: .leading) {
                    Text("Food")
                    TextView(text: $address)
                                            .frame(height: 200) // Set a height for the TextView
                                       //     .padding(.horizontal)
                                         //   .background(Color.gray.opacity(0.2))
                                            .cornerRadius(5)
                }
                
                VStack(alignment: .leading) {
                    Text("Drugs")
                    TextView(text: $address)
                                            .frame(height: 200)
                                            .cornerRadius(5)
                }
                
                VStack(alignment: .leading) {
                    Text("Airborne")
                    TextView(text: $address)
                                            .frame(height: 200)
                                        .cornerRadius(5)
                }
            }
            
            
            HStack(spacing: 20) {
                VStack(alignment: .leading) {
                    Text("Medication history")
                    TextView(text: $address)
                                            .frame(height: 200)
                                            .cornerRadius(5)
                }
                
                VStack(alignment: .leading) {
                    Text("Hospitalization history")
                    TextView(text: $address)
                                            .frame(height: 200) 
                                            .cornerRadius(5)
                }
                
                VStack(alignment: .leading) {
                   
                }
                .frame(maxWidth: .infinity)
            }
            
           
            
            
            
            VStack(alignment: .center) {
                Button(action: {
                    savePatientInfo()
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
        .alert(isPresented: $showAlert) {
                    Alert(
                        title: Text("Error"),
                        message: Text(responseMessage ?? "An unknown error occurred"),
                        dismissButton: .default(Text("OK"))
                    )
                }
    }


func savePatientInfo() {
        guard let url = URL(string: "https://deaf-agathe-local-dev-51f7350b.koyeb.app/patient") else { return }
        
        let patientData: [String: Any] = [
            "address": address,
            "age": 0,
            "bloodGroup": bloodGroup,
            "dateOfBirth": "",
            "firstName": firstName,
            "lastName": lastName,
            "phoneNumber": mobileNumber,
            "userID": ""
        ]
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        do {
            request.httpBody = try JSONSerialization.data(withJSONObject: patientData, options: .prettyPrinted)
        } catch {
            print("Failed to serialize data: \(error)")
            return
        }
 
    let task = URLSession.shared.dataTask(with: request) { data, response, error in
        if let error = error {
            DispatchQueue.main.async {
               // responseMessage = "Error making POST request: \(error.localizedDescription)"
            }
            return
        }

        guard let data = data else {
            DispatchQueue.main.async {
               // responseMessage = "No data received from the server"
            }
            return
        }

        if let response = response as? HTTPURLResponse {
            if response.statusCode == 200 {
                DispatchQueue.main.async {
                    showAlert = true
                    responseMessage = "Patient info saved successfully"
                }
            } else if response.statusCode == 422 {
                do {
                    let errorResponse = try JSONDecoder().decode(APIErrorResponse.self, from: data)
                    DispatchQueue.main.async {
                        showAlert = true
                        responseMessage = errorResponse.detail
                        errorDetails = errorResponse.errors
                    }
                } catch {
                    DispatchQueue.main.async {
                        showAlert = true
                        responseMessage = "Failed to decode error response: \(error.localizedDescription)"
                    }
                }
            } else {
                DispatchQueue.main.async {
                    showAlert = true
                    responseMessage = "Failed to save patient info: \(HTTPURLResponse.localizedString(forStatusCode: response.statusCode))"
                }
            }
        }
    }
        
        task.resume()
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


struct APIErrorResponse: Codable {
    let title: String
    let status: Int
    let detail: String
    let errors: [APIErrorDetail]
}

struct APIErrorDetail: Codable {
    let message: String
    let location: String
    let value: String
}
