//
//  ComparisonOperators.swift
//  
// Github: https://github.com/sisoje/RHBFoundation
// It's licensed under MIT, I didn't want to use the entire library though.

import Foundation
import CoreData

public func == <E: Equatable, R, K: KeyPath<R, E>>(kp: K, value: E) -> ComparisonTypedPredicate<R> {
    ComparisonTypedPredicate(kp, .equalTo, value)
}

// Support comparison of objects to NSManagedObjectID
public func == <E: NSManagedObject, R, K: KeyPath<R, Optional<E>>>(kp: K, value: NSManagedObjectID) -> ComparisonTypedPredicate<R> {
    ComparisonTypedPredicate(kp, .equalTo, value)
}

// Support comparison of objects to NSManagedObject
public func == <E: NSManagedObject, R, K: KeyPath<R, Optional<E>>>(kp: K, value: E) -> ComparisonTypedPredicate<R> {
    ComparisonTypedPredicate(kp, .equalTo, value)
}

public func != <E: Equatable, R, K: KeyPath<R, E>>(kp: K, value: E) -> ComparisonTypedPredicate<R> {
    ComparisonTypedPredicate(kp, .notEqualTo, value)
}

public func === <S: Sequence, R, K: KeyPath<R, S.Element>>(kp: K, values: S) -> ComparisonTypedPredicate<R> where S.Element: Equatable {
    ComparisonTypedPredicate(kp, .in, values)
}

// MARK: - non optional
public func > <C: Comparable, R, K: KeyPath<R, C>>(kp: K, value: C) -> ComparisonTypedPredicate<R> {
    ComparisonTypedPredicate(kp, .greaterThan, value)
}

public func < <C: Comparable, R, K: KeyPath<R, C>>(kp: K, value: C) -> ComparisonTypedPredicate<R> {
    ComparisonTypedPredicate(kp, .lessThan, value)
}

public func <= <C: Comparable, R, K: KeyPath<R, C>>(kp: K, value: C) -> ComparisonTypedPredicate<R> {
    ComparisonTypedPredicate(kp, .lessThanOrEqualTo, value)
}

public func >= <C: Comparable, R, K: KeyPath<R, C>>(kp: K, value: C) -> ComparisonTypedPredicate<R> {
    ComparisonTypedPredicate(kp, .greaterThanOrEqualTo, value)
}

// MARK: - optional
public func > <C: Comparable, R, K: KeyPath<R, C?>>(kp: K, value: C) -> ComparisonTypedPredicate<R> {
    ComparisonTypedPredicate(kp, .greaterThan, value)
}

public func < <C: Comparable, R, K: KeyPath<R, C?>>(kp: K, value: C) -> ComparisonTypedPredicate<R> {
    ComparisonTypedPredicate(kp, .lessThan, value)
}

public func <= <C: Comparable, R, K: KeyPath<R, C?>>(kp: K, value: C) -> ComparisonTypedPredicate<R> {
    ComparisonTypedPredicate(kp, .lessThanOrEqualTo, value)
}

public func >= <C: Comparable, R, K: KeyPath<R, C?>>(kp: K, value: C) -> ComparisonTypedPredicate<R> {
    ComparisonTypedPredicate(kp, .greaterThanOrEqualTo, value)
}
