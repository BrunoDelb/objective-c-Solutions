//
//  Hamming.m
//  Excercises
//
//  Created by Cheyo Jimenez on 11/2/15.
//  Copyright © 2015 Cheyo Jimenez. All rights reserved.
//

#import "Hamming.h"

@implementation Hamming

+ (NSUInteger) compute:(NSString *) input against:(NSString *) input2{
    
    if ([input isEqualToString:input2]) {return 0;}
    
    int count = 0;
    
    for (int i=0; i < input.length; i++) {
        if ([input characterAtIndex:i] != [input2 characterAtIndex:i]) {
            ++count;
        }
    }
    
    return count;
}


@end
