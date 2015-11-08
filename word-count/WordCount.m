//
//  WordCount.m
//  Excercises
//
//  Created by Cheyo Jimenez on 11/3/15.
//  Copyright © 2015 Cheyo Jimenez. All rights reserved.
//

#import "WordCount.h"

@implementation WordCount

NSString *words = @"";

- (id) initWithString: (NSString *) input {
    
    words = input;
    return self;
}

- (NSDictionary *) count{
    
    // Custom set of characted to remove.
    NSMutableCharacterSet *customSet = [NSMutableCharacterSet punctuationCharacterSet];
    [customSet addCharactersInString:@":,!&$%^"];
    
    // Removing custom character set from words varible
    words = [words stringByTrimmingCharactersInSet:customSet];
    words = [ words stringByReplacingOccurrencesOfString:@":" withString:@""];
    words = [ words stringByReplacingOccurrencesOfString:@"," withString:@""];
    words = [ words stringByReplacingOccurrencesOfString:@"  " withString:@" "];
    words = [ words lowercaseString];
    
    // Create array of the cleaned up string
    NSArray<NSString *> *wordsArray = [words componentsSeparatedByString:@" "];
    

    // Return dictionary
    NSMutableDictionary *dictReturn = [NSMutableDictionary dictionary];
    
    
    for (int i=0; i<wordsArray.count; i++) {
        
                int temp = [[dictReturn objectForKey:wordsArray[i]] intValue ] + 1;
        
                [dictReturn setObject: [NSNumber numberWithInt:temp ] forKey:wordsArray[i]];
        
    }
    
    
    return dictReturn;
}



@end
