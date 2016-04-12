//
//  NewFraction.m
//  moreOnClasses
//
//  Created by Админ on 08.04.16.
//  Copyright © 2016 Melentyev. All rights reserved.
//

#import "NewFraction.h"

@implementation NewFraction

// CUSTOM CLASS INITIALIZER
- (instancetype) initWith: (int) n over: (int) d {
    self = [super init];
    if (self)
        [self setNumerator:n overDenominator:d];
    return self;
}

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

// OVERRIDE GLOBAL/EXTERNAL VARIABLE
- (void) setgExternVar: (int) val {
    extern int gExternVar;
    gExternVar = val;
}

@end




