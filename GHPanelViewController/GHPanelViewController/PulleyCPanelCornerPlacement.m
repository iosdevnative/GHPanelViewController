//
//  PulleyCPanelCornerPlacement.m
//  PulleyC
//
//  Created by Artem Kedrov on 12/3/18.
//  Copyright © 2018 Artem Kedrov. All rights reserved.
//

#import "PulleyCPanelCornerPlacement.h"


@interface PulleyCPanelCornerPlacement ()
@property (nonatomic, assign) int value;

@end


@implementation PulleyCPanelCornerPlacement

- (instancetype)initWithRawValue:(int)rawValue {
    if ([super init]) {
        if (rawValue > 3 || rawValue < 0) {
            rawValue = 0;
        }
        [self setValue:rawValue];
    }
    return self;
}

+ (PulleyCPanelCornerPlacement *)topLeft {
    return [[PulleyCPanelCornerPlacement alloc] initWithRawValue:0];
}

+ (PulleyCPanelCornerPlacement *)topRight {
    return [[PulleyCPanelCornerPlacement alloc] initWithRawValue:1];
}

+ (PulleyCPanelCornerPlacement *)bottomLeft {
    return [[PulleyCPanelCornerPlacement alloc] initWithRawValue:2];
}

+ (PulleyCPanelCornerPlacement *)bottomRight {
    return [[PulleyCPanelCornerPlacement alloc] initWithRawValue:3];
}

- (BOOL)isEqual:(PulleyCPanelCornerPlacement *)object {
    return [self rawValue] == [object rawValue];
}

- (int)rawValue {
    return [self value];
}

- (NSString *)description
{
    switch ([self value]) {
        case 0:
            return @"Top Left";
            break;
        case 1:
            return @"Top Right";
            break;
        case 2:
            return @"Bottom Left";
            break;
        case 3:
            return @"Bottom Right";
            break;
        default:
            return @"N/A";
            break;
    }
}

@end
