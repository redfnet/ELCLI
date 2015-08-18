//
//  VersionCommand.swift
//  THGCLI
//
//  Created by Brandon Sneed on 7/27/15.
//  Copyright (c) 2015 TheHolyGrail. All rights reserved.
//

import Foundation

public class VersionCommand: Command {
    private let cli: CLI
    
    public var name: String { return "--version" }
    public var helpDescription: String { return "" }
    public var failOnUnrecognizedOptions: Bool { return false }
    
    public var verbose: Bool = false
    public var quiet: Bool = false
    
    public func configureOptions() {
        // do nothing
    }
    
    public func execute(otherParams: Array<String>?) -> CLIResult {
        writeln(.Stderr, "\(cli.appName) version \(cli.appVersion)")
        
        return CLIResult()
    }
    
    init(cli: CLI) {
        self.cli = cli
    }

}