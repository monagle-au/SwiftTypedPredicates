//
//  Collection<NSPredicate>+compound.swift
//  SwiftTypedPredicates
//
//  Created by David Monagle on 22/7/21.
//

import Foundation

public extension Collection where Element == NSPredicate {
    func compound(_ type: NSCompoundPredicate.LogicalType) -> NSPredicate {
        NSCompoundPredicate(type: type, subpredicates: Array(self))
    }
}
