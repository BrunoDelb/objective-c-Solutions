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


//- (NSInteger) contains:(NSString *) string in:(NSArray<NSString *> *) array{
//    
//    __block NSUInteger count = 0;
//    
//    void (^filterString)(NSString * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop);
//    
//    filterString = ^void(NSString * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
//        
//        if ([obj isEqualToString:string]){
//            count++;
//        }
//    };
//    
//    [array enumerateObjectsUsingBlock:filterString];
//    
//    return count;
//    
//}


- (NSArray *) match:(NSArray<NSString *> *) input{
    
    NSArray<NSString *> *wordsArray = [Anagram arrayFromString:[word lowercaseString]];
    
    NSMutableArray<NSString *> *returnPassed = [NSMutableArray array];
    
    NSInteger i, count = [input count];
    
    for (i = 0; i<count; i++) {
        // shadow copy of  words array
        NSString *each = [input[i] lowercaseString];
        NSString *eachOriginal = input[i];
        NSLog(@" looping %i ",i);
        NSArray<NSString *> *eachArray = [NSMutableArray array];
        eachArray = [Anagram arrayFromString:each];
        
        if ( [each length] == [word length] ){
//            NSLog(@"first equal");
//            NSLog(@" wordsArrayCount %lu ",(unsigned long)[wordsArray count]);
//            NSLog(@" eachArrayCount %lu ",(unsigned long)[eachArray count]);
            if ( [wordsArray count] ==  [eachArray count] ){
               // NSLog(@"second equal");
                if (![each isEqualToString:[word lowercaseString]]){
                 //   NSLog(@"third notequal");
                    // shadow copy of wordsarray and eacharray
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
