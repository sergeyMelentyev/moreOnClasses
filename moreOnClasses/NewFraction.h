//
//  NewFraction.h
//  moreOnClasses
//
//  Created by Админ on 08.04.16.
//  Copyright © 2016 Melentyev. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NewFraction : NSObject

// CUSTOM CLASS INITIALIZER
- (instancetype) initWith: (int) n over: (int) d;

// SYNTHESIZE ACCESSOR METHODS
@property int numerator;
@property int denominator;

// INSTANCE METHODS
- (void) print;
- (double) convertToNum;
- (void) setNumerator:(int)numerator overDenominator:(int)denominator;
- (void) addTwoFractions:(NewFraction*)f;

@end