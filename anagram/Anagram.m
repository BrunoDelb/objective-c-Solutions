//
//  Anagram.m
//  Excercises
//
//  Created by Cheyo Jimenez on 11/5/15.
//  Copyright © 2015 Cheyo Jimenez. All rights reserved.
//

#import "Anagram.h"

@interface Anagram ()

+ (NSArray<NSString *> *) arrayFromString:(NSString *) input;

@end


@implementation Anagram

NSString * word;

- (id) initWithString:(NSString *) input;
{
    word = input;
    return self;
}


+ (NSArray<NSString *> *) arrayFromString:(NSString *) input{
    
    NSMutableArray<NSString *> *wordsArray = [NSMutableArray array];
    
    for (int i = 0; i < [input length]; i++) {
        [wordsArray addObject:  [[input lowercaseString ] substringWithRange:NSMakeRange(i, 1)]  ];
    }
    return wordsArray;
}

- (NSArray *) match:(NSArray<NSString *> *) input{
    
    NSArray<NSString *> *wordsArray = [Anagram arrayFromString:[word lowercaseString]];
    
    NSMutableArray<NSString *> *returnPassed = [NSMutableArray array];
    
    NSInteger i, count = [input count];
    
    for (i = 0; i<count; i++) {
        NSString *each = [input[i] lowercaseString];
        NSString *eachOriginal = input[i];
        NSArray<NSString *> *eachArray = [NSMutableArray array];
        eachArray = [Anagram arrayFromString:each];
        
        if ( [each length] == [word length] ){
            if ( [wordsArray count] ==  [eachArray count] ){
                if (![each isEqualToString:[word lowercaseString]]){
                    NSArray<NSString *> *wordsArraysorted = [[wordsArray copy] sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
                    NSArray<NSString *> *eachArraysorted =  [[eachArray copy]sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
                    //                    NSLog(@"%@",eachArraysorted);
                    //                    NSLog(@"%@",wordsArraysorted);
                    if ([wordsArraysorted isEqual:eachArraysorted]) {
                        [returnPassed addObject:eachOriginal];
                    }
                }
            }
        }
        
        
    }
    
    return returnPassed;
}






@end
