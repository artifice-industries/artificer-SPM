//
//  Command.swift
//  artificer
//
//  Created by Sam Smallman on 03/02/2020.
//

import Foundation
import SPMUtility

protocol Command {
    var command: String { get }
    var overview: String { get }
    
    init(parser: ArgumentParser)
    func run(with arguments: ArgumentParser.Result) throws
}

struct StampCommand: Command {
    let command = "stamp"
    let overview = "Lists available Stamp servers"
    
    init(parser: ArgumentParser) {
        parser.add(subparser: command, overview: overview)
    }
    
    func run(with arguments: ArgumentParser.Result) throws {
        print("Woo Hooo \(arguments)")
    }
}
