//
//  Result+.swift
//  sparkle
//
//  Created by ohayoukenchan on 2021/05/07.
//

import Foundation

public extension Result {
    init(_ success: Success?, _ failure: Failure?) {
        if let success = success {
            self = .success(success)
        } else if let failure = failure {
            self = .failure(failure)
        } else {
            fatalError("Illegal combination found.\n Success: \(success as Any), Failure: \(failure as Any)")
        }
    }
}
