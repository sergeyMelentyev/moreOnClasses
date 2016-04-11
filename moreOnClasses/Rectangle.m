//
//  Rectangle.m
//  moreOnClasses
//
//  Created by Админ on 11.04.16.
//  Copyright © 2016 Melentyev. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle

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

@end




