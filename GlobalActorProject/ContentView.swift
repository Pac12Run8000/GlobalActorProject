//
//  ContentView.swift
//  GlobalActorProject
//
//  Created by Michelle Grover on 5/8/23.
//

import SwiftUI

struct ContentView: View {
    
    let resource = SharedResource()
    var body: some View {
        VStack {
            
        }
        .padding()
        .onAppear {
            Task {
                await incrementSharedResource(resource: resource) // Task 1
                await incrementSharedResource(resource: resource) // Task 2
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
