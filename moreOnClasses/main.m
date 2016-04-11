//
//  main.m
//  moreOnClasses
//
//  Created by Админ on 08.04.16.
//  Copyright © 2016 Melentyev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"
#import "NewFraction.h"
#import "SubFraction.h"
#import "SubNewFraction.h"
#import "XYPoint.h"
#import "Rectangle.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // MANUAL SETTERS AND GETTERS; ADD TWO OBJECTS AND SAVE TO THE THIRD
        Fraction *aFraction = [[Fraction alloc] init];
        [aFraction setNumerator:1];
        [aFraction setDenominator:4];
        Fraction *bFraction = [[Fraction alloc] init];
        [bFraction setNumerator:1];
        [bFraction setDenominator:2];
        Fraction *resultFraction;
        [aFraction print];
        NSLog(@"+");
        [bFraction print];
        NSLog(@"=");
        resultFraction = [aFraction add:bFraction];
        [resultFraction print];
        
        // SYNTHESIZED ACCESSOR METHODS; ADD TWO OBJECTS ADD OVERRIDE RESULT TO THE FIRST
        NewFraction *cFraction = [[NewFraction alloc] init];
        [cFraction setNumerator:2 overDenominator:5];
        double c = cFraction.convertToNum;
        NewFraction *dFraction = [[NewFraction alloc] init];
        [dFraction setNumerator:1 overDenominator:2];
        double d = dFraction.convertToNum;
        NSLog(@"%i / %i", cFraction.numerator, cFraction.denominator);
        NSLog(@"%i / %i", dFraction.numerator, dFraction.denominator);
        
        // PASS AN OBJECT AS AN ARGUMENT
        [cFraction addTwoFractions:dFraction];
        double sum = cFraction.convertToNum;
        NSLog(@"%f + %f = %f", c, d, sum);
        
        // INHERITANCE BY VALUE
        SubFraction *inheritedFraction = [[SubFraction alloc] init];
        [inheritedFraction setNumerator:1];
        [inheritedFraction setDenominator:2];
        [inheritedFraction printInheritedVar];
        
        // INHERITANCE BY METHOD
        SubNewFraction *inheretedMethodFraction = [[SubNewFraction alloc] init];
        [inheretedMethodFraction setInheritedValue:1];
        NSLog(@"Inhereted Method: %i", [inheretedMethodFraction inheritedValue]);
        
        Rectangle *myRect = [[Rectangle alloc] init];
        XYPoint *myPoint = [[XYPoint alloc] init];
        [myRect setWidth:5 andHeight:8];
        [myPoint setX:100 setY:100];
        myRect.origin = myPoint;
        NSLog(@"Rectangle w = %i, h = %i", myRect.width, myRect.height);
        NSLog(@"Origin at (%i, %i)", myRect.origin.x, myRect.origin.y);
        NSLog(@"Area = %i, Perimeter = %i", [myRect area], [myRect perimeter]);
    }
    return 0;
}








