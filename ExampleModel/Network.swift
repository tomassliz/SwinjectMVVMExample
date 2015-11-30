//
//  Network.swift
//  SwinjectMVVMExample
//
//  Created by Tomas Sliz on 29/11/15.
//  Copyright © 2015 Tomas Sliz. All rights reserved.
//

import Alamofire
import ReactiveCocoa

public final class Network: Networking {
    private let queue = dispatch_queue_create("SwinjectMVVMExample.ExampleModel.Network.Queue", DISPATCH_QUEUE_SERIAL)
    
    public func requestJSON(url: String, parameters: [String : AnyObject]?) -> SignalProducer<AnyObject, NetworkError> {
        return SignalProducer { observer, disposable in
            let serializer = Alamofire.Request.JSONResponseSerializer()
            Alamofire
                .request(.GET, url, parameters: parameters)
                .response(queue: self.queue, responseSerializer: serializer) { response in
                    switch response.result {
                    case .Success(let value):
                        observer.sendNext(value)
                        observer.sendCompleted()
                    case .Failure(let error):
                        observer.sendFailed(NetworkError(error: error))
                    }
            }
        }
    }
}
