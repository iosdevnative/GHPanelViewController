//
//  PulleyCSnapMode.m
//  PulleyC
//
//  Created by Artem Kedrov on 12/3/18.
//  Copyright © 2018 Artem Kedrov. All rights reserved.
//

#import "PulleyCSnapMode.h"

@interface PulleyCSnapMode ()
@property (nonatomic, assign) int value;
@end


@implementation PulleyCSnapMode
- (instancetype)initWithRawValue:(int) rawValue
{
  self = [super init];
  if (self) {
    [self setValue:rawValue];
  }
  return self;
}

+ (PulleyCSnapMode *)nearestPosition {
  return [[PulleyCSnapMode alloc] initWithRawValue:0];
}
+ (PulleyCSnapMode *)nearestPositionUnlessExceeded:(int)value {
  return [[PulleyCSnapMode  alloc] initWithRawValue:value];
}

- (BOOL)isEqual:(PulleyCSnapMode *)object {
  return [self value] == [object value];
}
- (int)rawValue {
  return [self value];
}

- (NSString *)description
{
    switch ([self value]) {
        case 0:
            return @"Nearest Position";
            break;
            
        default:
            return @"Nearest Position Unless Exceeded";
            break;
    }
}
@end
