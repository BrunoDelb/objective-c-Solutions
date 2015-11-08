//
//  HelloWorld.m
//  objTestProject
//
//  Created by Cheyo Jimenez on 10/13/15.
//  Copyright © 2015 Cheyo Jimenez. All rights reserved.
//

#import "HelloWorld.h"

@implementation HelloWorld

- (NSString *) hello:(NSString *) input{
    
    NSString  *hello = @"Hello, ";
    
    if (input == nil) {
        return [NSString stringWithFormat:@"%@%@%@", hello, @"World", @"!"];
    }
    
    return [NSString stringWithFormat:@"%@%@%@", hello, input, @"!"];
}


@end
