//
//  ImageSearch.swift
//  SwinjectMVVMExample
//
//  Created by Tomas Sliz on 30/11/15.
//  Copyright © 2015 Tomas Sliz. All rights reserved.
//

import ReactiveCocoa
import Result
import Himotoki

public final class ImageSearch: ImageSearching {
    private let network: Networking
    
    public init(network: Networking) {
        self.network = network
    }
    
    public func searchImages() -> SignalProducer<ResponseEntity, NetworkError> {
        let url = Pixabay.apiURL
        let parameters = Pixabay.requestParameters
        return network.requestJSON(url, parameters: parameters)
            .attemptMap { json in
                if let response = (try? decode(json)) as ResponseEntity? {
                    return Result(value: response)
                } else {
                    return Result(error: .IncorrectDataReturned)
                }
            }
    }
}
