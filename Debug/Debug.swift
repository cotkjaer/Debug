//
//  Debug.swift
//  Debug
//
//  Created by Christian Otkjær on 16/09/15.
//  Copyright © 2015 Christian Otkjær. All rights reserved.
//

import UIKit

public func print<T>(if condition: Bool?, value: T)
{
    if condition == true { print(value) }
}

public func debugPrint<T>(if condition: Bool?,  value: T, terminator: String = "\n")
{
    if condition == true { debugPrint(value, terminator:terminator) }
}

public let isSimulator = UIDevice.current.name.hasSuffix("Simulator")

///Wrap try catch log in one go
public func tryCatchLog(call: () throws -> () )
{
    do { try call() } catch let e { debugPrint(e) }
}
