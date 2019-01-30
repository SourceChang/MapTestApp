//
//  SwiftViewController.swift
//  MaoTestApp
//
//  Created by Source on 2019/1/30.
//  Copyright © 2019 Source. All rights reserved.
//


import UIKit


class SwiftViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var mapViewFrame = view.bounds
        mapViewFrame.size.height /= 2.00
        let mapView = SCMapView(frame: mapViewFrame)
        view.addSubview(mapView)
        
        var mapWrapperViewFrame = mapViewFrame
        mapWrapperViewFrame.origin.y = mapViewFrame.maxY
        let mapWrapperView = SCMapWrapperView(frame: mapWrapperViewFrame)
        view.addSubview(mapWrapperView)
    }

    
}
