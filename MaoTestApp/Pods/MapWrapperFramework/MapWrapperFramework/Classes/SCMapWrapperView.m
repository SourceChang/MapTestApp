//
//  SCMapWrapperView.m
//  MapFramework
//
//  Created by Source on 2019/1/30.
//


#import "SCMapWrapperView.h"


// Views
#import <MapFramework/SCMapView.h>


@implementation SCMapWrapperView


#pragma mark - Life Circle
- (nonnull instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self commonInit];
    }
    
    return self;
}


- (nullable instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self commonInit];
    }
    
    return self;
}


- (void)commonInit {
    SCMapView *mapView = [[SCMapView alloc] initWithFrame:self.bounds];
    [self addSubview:mapView];
}


@end

