//
//  AddActivityView.swift
//  HabitTrackingApp
//
//  Created by Sean Dooley on 20/11/2024.
//

import SwiftUI

struct AddActivityView: View {
    var activities: Activities
    
    @Environment(\.dismiss) var dismiss
    
    @State private var name = ""
    @State private var description = ""
    
    var body: some View {
        NavigationStack {
            Form {
                TextField("Name", text: $name)
                TextField("Description", text: $description)
            }
            .navigationTitle("Add activity")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Save") {
                        let item = Activity(name: name, description: description)
                        
                        activities.items.append(item)
                        
                        dismiss()
                    }
                }
                
                ToolbarItem(placement: .topBarLeading) {
                    Button("Cancel") {
                        dismiss()
                    }
                }
            }
        }
    }
}

#Preview {
    AddActivityView(activities: Activities())
}
