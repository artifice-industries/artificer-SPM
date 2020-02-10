//
//  Artificer.swift
//  artificer
//
//  Created by Sam Smallman on 03/02/2020.
//

import Foundation

public final class Artificer {
    
    public init() {}

    var registry = CommandRegistry(usage: "<command> <options>", overview: "Basic Overview")

    public func run() throws {
        registry.register(command: StampCommand.self)
        registry.run()
    }
}
