//
//  NucleotideCount.m
//  exercismObjc
//
//  Created by Cheyo Jimenez on 4/6/16.
//  Copyright © 2016 Cheyo Jimenez. All rights reserved.
//

#import "NucleotideCount.h"

@interface DNA ()

+ (BOOL) isValid:(NSString *)input;
+ (void) throwExeption;
@end


@implementation DNA

+ (NSArray<NSString *> *) arrayFromString:(NSString *) input{
    
    NSMutableArray<NSString *> *wordsArray = [NSMutableArray array];
    
    for (int i = 0; i < [input length]; i++) {
        [wordsArray addObject:  [[input uppercaseString ] substringWithRange:NSMakeRange(i, 1)]  ];
    }
    return wordsArray;
}

+ (BOOL) isValid:(NSString *)input{
    
    NSMutableSet<NSString *> *unique =  [NSMutableSet set];
    NSArray<NSString *> *inputArray = [DNA arrayFromString:input];
    
    for (NSString *each in inputArray) {
        [unique addObject:each];
    }
    
    for (NSString *each in unique){
        if (   [each isEqualToString:@"A"] |
            [each isEqualToString:@"T"] |
            [each isEqualToString:@"C"] |
            [each isEqualToString:@"G"] |
            [each isEqualToString:@"U"]
            )
        {}
        else {
            return false;
        }
    }
    return [unique count] <= 4;
}

+ (void) throwExeption{
    [NSException raise:@"Invalid value" format:@" input is invalid"];
}

NSString * value;

- (id) initWithStrand: (NSString *)input {
    
    if ([input containsString:@"U"]){
        [DNA throwExeption];
    }
    
    if (![DNA isValid:input]) {
        [DNA throwExeption];
    }
    value = [input uppercaseString];
    return self;
}

- (NSUInteger) count:(NSString *)input{
    
    if (![DNA isValid:input]){
        [DNA throwExeption];
    }
    
    NSInteger componentsCount = [[value componentsSeparatedByString:[input uppercaseString]] count];
    
    NSUInteger result = componentsCount - 1;
    
    if (result == -1) {
        [DNA throwExeption];
    }
    return result;
}

- (NSDictionary *) nucleotideCounts{
    
    NSMutableDictionary *didRetun = [NSMutableDictionary dictionary];
    
    for (NSString *each in @[@"A", @"T", @"C", @"G"]) {
        NSUInteger result = [[value componentsSeparatedByString:each] count]- 1;
        if ([value containsString:each]){
            [didRetun setValue:[NSNumber numberWithUnsignedInteger:result] forKey:each] ;
        } else {
            [didRetun setValue:[NSNumber numberWithInt:0] forKey:each];
        }
    }
    return didRetun;
}

@end



