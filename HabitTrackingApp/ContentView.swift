//
//  ContentView.swift
//  HabitTrackingApp
//
//  Created by Sean Dooley on 20/11/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var activities = Activities()
    @State private var showingAddActivity = false
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(activities.items) { item in
                    NavigationLink {
                        ActivityDetailView(activity: item)
                    } label: {
                        HStack {
                            Text(item.name)
                        }
                    }
                }
                .onDelete(perform: removeItems)
            }
            .navigationTitle("Habit Tracking App")
            .toolbar {
                Button("Add activity", systemImage: "plus") {
                    showingAddActivity = true
                }
            }
        }
        .sheet(isPresented: $showingAddActivity) {
            AddActivityView(activities: activities)
        }
    }
    
    func removeItems(at offsets: IndexSet) {
        activities.items.remove(atOffsets: offsets)
    }
}

#Preview {
    ContentView()
}
