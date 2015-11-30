//
//  ImageSearching.swift
//  SwinjectMVVMExample
//
//  Created by Tomas Sliz on 30/11/15.
//  Copyright © 2015 Tomas Sliz. All rights reserved.
//

import ReactiveCocoa

public protocol ImageSearching {
    func searchImages() -> SignalProducer<ResponseEntity, NetworkError>
}
