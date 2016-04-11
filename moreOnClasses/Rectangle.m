//
//  Rectangle.m
//  moreOnClasses
//
//  Created by Админ on 11.04.16.
//  Copyright © 2016 Melentyev. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle {
    // DECLARE A LOCAL INSTANCE VARIABLE
    XYPoint *origin;
}

- (void) setWidth: (int) w andHeight: (int) h {
    self.width = w;
    self.height = h;
}
- (int) area {
    return self.width * self.height;
}
- (int) perimeter {
    return (self.width + self.height) * 2;
}

// SETTER AND GETTER METHODS
- (XYPoint *) origin {
    return origin;
}
- (void) setOrigin: (XYPoint *) pt {
    origin = pt;
}

@end




