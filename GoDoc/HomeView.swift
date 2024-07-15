//
//  HomeView.swift
//  GoDoc
//
//  Created by Thripthi Haridas on 10/07/24.
//

import SwiftUI

enum Destination {
    case addPatient
    case patientList
    case report
    case appointments
}

struct GridItemModel: Identifiable {
    var id = UUID()
    var imageName: String
    var title: String
    var destination: Destination
}

// Sample data
let gridItems = [
    GridItemModel(imageName: "AddPatient", title: "Log your new Patient Info", destination: .addPatient),
    GridItemModel(imageName: "PatientList", title: "Patient List", destination: .patientList),
    GridItemModel(imageName: "Report", title: "Add Patient Report", destination: .report),
    GridItemModel(imageName: "Appointments", title: "Appointments", destination: .appointments)
]

struct HomeView: View {
    
    let columns = [
           GridItem(.flexible()),
           GridItem(.flexible())
       ]
    
    var body: some View {
        NavigationView {
        VStack {
            HeaderView()
            
            
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(gridItems) { item in
                        NavigationLink(destination: destinationView(for: item.destination)) {
                        VStack {
                            Image(item.imageName)
                                .resizable()
                                .frame(width: 100, height: 100)
                                .cornerRadius(20)
                            
                            Text(item.title)
                                .font(.system(size: 24))
                                .fontWeight(.bold)
                                .foregroundColor(Color.gray)
                                .padding(.top, 10)
                        }
                        .frame(width: 500, height: 300)
                        .background(Color.white)
                        .cornerRadius(20)
                        .shadow(color: .gray, radius: 5, x: 0, y: 2)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.white, lineWidth: 2)
                        )
                    }
                    }
                }
                .padding()
            }
            Spacer()
        }
        //.frame(maxWidth: .infinity, maxHeight: .infinity)
        //.edgesIgnoringSafeArea(.top)
    }
    .navigationViewStyle(StackNavigationViewStyle())
        
    }
    
    @ViewBuilder
       func destinationView(for destination: Destination) -> some View {
           switch destination {
           case .addPatient:
               AddPatientInfoView()
           case .patientList:
               PatientListView()
           case .report:
               AddReportsView()
           case .appointments:
               AppointmentsView()
           }
       }
}

#Preview {
    HomeView()
}
