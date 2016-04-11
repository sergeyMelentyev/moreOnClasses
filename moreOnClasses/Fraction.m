//
//  Fraction.m
//  moreOnClasses
//
//  Created by Админ on 08.04.16.
//  Copyright © 2016 Melentyev. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction {
// LOCAL VARIABLES
}

// MANUAL SETTERS AND GETTERS
- (void) setNumerator: (int) n {
    numerator = n;
}
- (void) setDenominator: (int) d {
    denominator = d;
}
- (int) numerator {
    return numerator;
}
- (int) denominator {
    return denominator;
}

// INSTANCE METHODS
- (void) print {
    NSLog(@"%i/%i", numerator, denominator);
}
- (void) reduce {
    int u = numerator;
    int v = denominator;
    int temp;
    while (v != 0) {
        temp = u % v;
        u = v;
        v = temp;
    }
    numerator /= u;
    denominator /= u;
}
- (Fraction*) add:(Fraction*)f {
    Fraction *result = [[Fraction alloc] init];
    result.numerator = numerator * f.denominator + denominator * f.numerator;
    result.denominator = denominator * f.denominator;
    [result reduce];
    return result;
}

@end