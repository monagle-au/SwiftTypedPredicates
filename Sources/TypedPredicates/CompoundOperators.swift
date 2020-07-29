//
//  CompoundOperators.swift
//  
// Github: https://github.com/sisoje/RHBFoundation
// It's licensed under MIT, I didn't want to use the entire library though.

import Foundation

public func && <TP1: TypedPredicateProtocol, TP2: TypedPredicateProtocol>(p1: TP1, p2: TP2) -> CompoundTypedPredicate<TP1.Root> where TP1.Root == TP2.Root {
    CompoundTypedPredicate(type: .and, subpredicates: [p1, p2])
}

public func || <TP1: TypedPredicateProtocol, TP2: TypedPredicateProtocol>(p1: TP1, p2: TP2) -> CompoundTypedPredicate<TP1.Root> where TP1.Root == TP2.Root {
    CompoundTypedPredicate(type: .or, subpredicates: [p1, p2])
}

public prefix func ! <TP: TypedPredicateProtocol>(p: TP) -> CompoundTypedPredicate<TP.Root> {
    CompoundTypedPredicate(type: .not, subpredicates: [p])
}
