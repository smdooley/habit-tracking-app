//
//  ActivityDetailView.swift
//  HabitTrackingApp
//
//  Created by Sean Dooley on 25/11/2024.
//

import SwiftUI

struct ActivityDetailView: View {
    let activity: Activity
    
    var body: some View {
        VStack(spacing: 10) {
            Text(activity.description)
            Text("Completed: \(activity.completed)")
        }
        .navigationTitle(activity.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    let activity: Activity = Activity(name: "Activity 101", description: "Nullam est leo, hendrerit a massa non, sodales vehicula sapien.")
    
    return ActivityDetailView(activity: activity)
}
