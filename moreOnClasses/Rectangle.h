//
//  Rectangle.h
//  moreOnClasses
//
//  Created by Админ on 11.04.16.
//  Copyright © 2016 Melentyev. All rights reserved.
//

#import <Foundation/Foundation.h>
@class XYPoint;

@interface Rectangle : NSObject

@property int width;
@property int height;
@property XYPoint *origin;

- (void) setWidth: (int) w andHeight: (int) h;
- (int) area;
- (int) perimeter;

@end