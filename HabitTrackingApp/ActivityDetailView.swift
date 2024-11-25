//
//  ActivityDetailView.swift
//  HabitTrackingApp
//
//  Created by Sean Dooley on 25/11/2024.
//

import SwiftUI
import Foundation

struct ActivityDetailView: View {
    let activity: Activity
    let activities: Activities
    
    var body: some View {
        VStack(spacing: 10) {
            Text(activity.description)
                .font(.headline)
                .padding()
            Text("Completed: \(activity.completed)")
                .padding()
            Button {
                // find the previous activity, then change it to be your new activity
                guard let index = activities.items.firstIndex(of: activity) else { return }
                activities.items[index].completed += 1
            } label: {
                Label("Increment completion", systemImage: "plus")
            }
            .buttonStyle(.borderedProminent)
            .padding()
        }
        .navigationTitle(activity.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    let activites = Activities()
    let activity: Activity = Activity(name: "Activity 101", description: "Nullam est leo, hendrerit a massa non, sodales vehicula sapien.")
    
    return ActivityDetailView(activity: activity, activities: activites)
}
