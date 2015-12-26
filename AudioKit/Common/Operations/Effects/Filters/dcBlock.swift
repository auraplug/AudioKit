//
//  dcBlock.swift
//  AudioKit For iOS
//
//  Autogenerated by scripts by Aurelius Prochazka. Do not edit directly.
//  Copyright © 2015 AudioKit. All rights reserved.
//

import Foundation

extension AKOperation {

    /// Implements the DC blocking filter Y[i] = X[i] - X[i-1] + (igain * Y[i-1]) 
    /// Based on work by Perry Cook.
    ///
    /// - returns: AKOperation
    /// - parameter input: Input audio signal
     ///
    public func dcBlock(
        ) -> AKOperation {
            return AKOperation("(\(self) dcblock)")
    }
}