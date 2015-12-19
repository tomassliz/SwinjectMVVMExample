//
//  ImageSearchTableViewModeling.swift
//  SwinjectMVVMExample
//
//  Created by Tomas Sliz on 03/12/15.
//  Copyright © 2015 Tomas Sliz. All rights reserved.
//

import ReactiveCocoa

public protocol ImageSearchTableViewModeling {
    var cellModels: AnyProperty<[ImageSearchTableViewCellModeling]> { get }
    
    func startSearch()
}
