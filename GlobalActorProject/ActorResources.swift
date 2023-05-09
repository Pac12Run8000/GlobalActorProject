//
//  ActorResources.swift
//  GlobalActorProject
//
//  Created by Michelle Grover on 5/8/23.
//

import Foundation

actor Counter {
    private var count = 0
    
    func increment() {
        count += 1
        print("actor count incremented to \(count)")
    }
    
    func getCount() -> Int {
        return count
    }
}

// Usage
let counter = Counter()


