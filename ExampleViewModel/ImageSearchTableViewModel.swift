//
//  ImageSearchTableViewModel.swift
//  SwinjectMVVMExample
//
//  Created by Tomas Sliz on 03/12/15.
//  Copyright © 2015 Tomas Sliz. All rights reserved.
//

import ExampleModel
import ReactiveCocoa

public final class ImageSearchTableViewModel: ImageSearchTableViewModeling {
    public var cellModels: AnyProperty<[ImageSearchTableViewCellModeling]> {
        return AnyProperty(_cellModels)
    }
    
    private let _cellModels = MutableProperty<[ImageSearchTableViewCellModeling]>([])
    private let imageSearch: ImageSearching
    
    public init(imageSearch: ImageSearching) {
        self.imageSearch = imageSearch
    }
    
    public func startSearch() {
        imageSearch.searchImages()
            .map { response in
                response.images.map {
                    ImageSearchTableViewCellModel(image: $0)
                        as ImageSearchTableViewCellModeling
                }
            }
            .observeOn(UIScheduler())
            .on(next: { cellModels in
                self._cellModels.value = cellModels
            })
            .start()
    }
}
