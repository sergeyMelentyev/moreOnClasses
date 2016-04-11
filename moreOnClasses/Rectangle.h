//
//  Rectangle.h
//  moreOnClasses
//
//  Created by Админ on 11.04.16.
//  Copyright © 2016 Melentyev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XYPoint.h"
// USE DIRECTIVE @CLASS FOR LIGHT IMPORT

@interface Rectangle : NSObject

@property int width;
@property int height;

- (void) setWidth: (int) w andHeight: (int) h;
- (int) area;
- (int) perimeter;

// MANUAL SETTER AND GETTER METHODS
- (XYPoint *) origin;
- (void) setOrigin: (XYPoint *) pt;

@end