//
//  XYPoint.h
//  moreOnClasses
//
//  Created by Админ on 11.04.16.
//  Copyright © 2016 Melentyev. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XYPoint : NSObject

// DEFINE AN EXTERNAL INSTANCE VARIABLES
@property int x;
@property int y;

// DEFINE AN EXTERNAL INSTANCE METHOD
- (void) setX: (int) xVal setY: (int) yVal;

@end