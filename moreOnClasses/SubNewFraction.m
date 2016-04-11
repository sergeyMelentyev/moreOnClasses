//
//  SubNewFraction.m
//  moreOnClasses
//
//  Created by Админ on 11.04.16.
//  Copyright © 2016 Melentyev. All rights reserved.
//

#import "SubNewFraction.h"

@implementation SubNewFraction

// INHERITED METHOD INSIDE NEW INSTACE METHOD
- (void) setInheritedValue: (int) s {
    [self setNumerator:s overDenominator:s];
}
- (int) inheritedValue {
    return self.numerator;
}

@end