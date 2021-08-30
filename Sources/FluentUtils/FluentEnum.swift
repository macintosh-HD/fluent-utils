//
//  File.swift
//  
//
//  Created by Julian Gentges on 30.08.21.
//

import FluentKit

public protocol FluentEnum: RawRepresentable, CaseIterable {
    static var name: String { get }
}
