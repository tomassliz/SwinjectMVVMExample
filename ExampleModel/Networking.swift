//
//  Networking.swift
//  SwinjectMVVMExample
//
//  Created by Tomas Sliz on 29/11/15.
//  Copyright © 2015 Tomas Sliz. All rights reserved.
//

import ReactiveCocoa

public protocol Networking {
    func requestJSON(url: String, parameters: [String: AnyObject]?) -> SignalProducer<AnyObject, NetworkError>
}
