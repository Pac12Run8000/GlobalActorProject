//
//  SharedResource.swift
//  GlobalActorProject
//
//  Created by Michelle Grover on 5/8/23.
//

import Foundation
@globalActor
final public actor MainActor: GlobalActor {
    public static let shared = MainActor()
    
    public init() {}
}

final class SharedResource {
    var value: Int = 0
    
    // Increment the value in a thread-safe manner
    @MainActor
    func increment() {
        value += 1
        print("Value incremented to \(value)")
    }
}

@MainActor func incrementSharedResource(resource: SharedResource) {
    resource.increment()
}



