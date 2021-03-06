//
//  Fraction.h
//  moreOnClasses
//
//  Created by Админ on 08.04.16.
//  Copyright © 2016 Melentyev. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject {
// EXTERNAL VARIABLES
    int numerator;
    int denominator;
}

// MAUAL SETTERS AND GETTERS
- (void) setNumerator: (int) n;
- (void) setDenominator: (int) d;
- (int) numerator;
- (int) denominator;

// INSTANCE METHODS
- (void) print;
- (void) reduce;
- (Fraction*) add:(Fraction*)f;

// OVERRIDE GLOBAL/EXTERNAL VARIABLE
- (void) setgExternVar: (int) val;

// CLASS METHODS
+ (Fraction *) allocWithCounter;
+ (int) count;

@end




