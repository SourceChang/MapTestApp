//
//  ViewController.m
//  MaoTestApp
//
//  Created by Source on 2019/1/30.
//  Copyright © 2019 Source. All rights reserved.
//


#import "ViewController.h"


// Dependent 3rd Libraries
#import <MapWrapperFramework/SCMapWrapperView.h>
#import <MapFramework/SCMapView.h>


@import MapWrapperFrameworkSwift;


@interface ViewController ()


@end


@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    CGRect mapWrapperViewFrame = self.view.bounds;
    mapWrapperViewFrame.size.height /= 3.00;
    SCMapWrapperView *mapWrapperView = [[SCMapWrapperView alloc] initWithFrame:mapWrapperViewFrame];
    [self.view insertSubview:mapWrapperView
                belowSubview:self.swiftButton];
    
    
    CGRect mapViewFrame = mapWrapperViewFrame;
    mapViewFrame.origin.y = CGRectGetMaxY(mapWrapperViewFrame);
    SCMapWrapperView *mapView = [[SCMapWrapperView alloc] initWithFrame:mapViewFrame];
    [self.view insertSubview:mapView
                belowSubview:self.swiftButton];
    
    
    CGRect anotherWrapperViewFrame = mapViewFrame;
    anotherWrapperViewFrame.origin.y = CGRectGetMaxY(mapViewFrame);
    MapWrapperView *anotherWrapperView = [[MapWrapperView alloc] initWithFrame:anotherWrapperViewFrame];
    [self.view insertSubview:anotherWrapperView
                belowSubview:self.swiftButton];
}


@end

