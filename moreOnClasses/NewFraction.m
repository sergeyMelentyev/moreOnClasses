//
//  NewFraction.m
//  moreOnClasses
//
//  Created by Админ on 08.04.16.
//  Copyright © 2016 Melentyev. All rights reserved.
//

#import "NewFraction.h"

@implementation NewFraction

// INSTANCE METHODS
- (void) print {
    NSLog(@"%i/%i", self.numerator, self.denominator);
}
- (double) convertToNum {
    if (self.denominator != 0)
        return (double) self.numerator / self.denominator;
    else
        return NAN;
}
- (void) setNumerator:(int)numerator overDenominator:(int)denominator {
    self.numerator = numerator;
    self.denominator = denominator;
}
- (void) addTwoFractions:(NewFraction*)f {
    self.numerator = self.numerator * f.denominator + self.denominator * f.numerator;
    self.denominator = self.denominator * f.denominator;
}

@end