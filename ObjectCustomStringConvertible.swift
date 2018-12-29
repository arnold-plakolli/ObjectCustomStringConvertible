//
//  ObjectCustomStringConvertible.swift
//  AwaitKit
//
//  Created by Arnold Plakolli on 12/29/18.
//

import Foundation

protocol Reflectable {
    func properties() -> [String: Any]
}

extension Reflectable {
    func properties() -> [String: Any] {
        var properties: [String: Any] = [:]
        let bookMirror = Mirror(reflecting: self)
        for (name, value) in bookMirror.children {
            guard let name = name else { continue }
            properties[name] = value
        }
        return properties
    }
}

protocol ObjectCustomStringConvertible: Reflectable, CustomStringConvertible { }
extension ObjectCustomStringConvertible {
    var description: String {
        var string = "\(String(describing: Self.self)){"
        string += self.properties()
            .map{ "\($0.key)=\($0.value)" }
            .joined(separator: ", ")
        string += "}\n"
        return string
    }
}
