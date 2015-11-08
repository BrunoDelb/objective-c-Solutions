//
//  Bob.m
//  Excercises
//
//  Created by Cheyo Jimenez on 11/1/15.
//  Copyright © 2015 Cheyo Jimenez. All rights reserved.
//

#import "Bob.h"

@implementation Bob

NSString *fine  =  @"Fine. Be that way!";
NSString *sure  = @"Sure.";
NSString *woah = @"Whoa, chill out!";
NSString *whatever = @"Whatever.";

- (NSMutableCharacterSet *) punctuation {   return [NSMutableCharacterSet punctuationCharacterSet]; }
- (NSMutableCharacterSet *) decimal {       return [NSMutableCharacterSet decimalDigitCharacterSet];}
- (NSMutableCharacterSet *) whitespace {    return [NSMutableCharacterSet whitespaceCharacterSet];  }
- (NSMutableCharacterSet *) charSetPunDecWhi {
        NSMutableCharacterSet *temp = [NSMutableCharacterSet punctuationCharacterSet];
        [temp formUnionWithCharacterSet:[self decimal]];
        [temp formUnionWithCharacterSet:[self whitespace]];
    return temp;
}


- (NSString *) hey:(NSString *)input {
    
    NSString *response = @"";
    
    self.isEmpty = [[input stringByTrimmingCharactersInSet:[self whitespace]] isEqualToString:@""];
    self.isQuestion = [input hasSuffix:@"?"];
    self.isExclamation = [input hasSuffix:@"!"];
    self.isCapital = [input isEqualToString:[input uppercaseString]];
    self.isNumber = [[input stringByTrimmingCharactersInSet:[self charSetPunDecWhi]] isEqualToString:@""];
    
    
    if (!self.isEmpty && !self.isQuestion && !self.isExclamation && self.isCapital && self.isNumber) {
        response = whatever;
    }else
        
    if (!self.isEmpty && self.isQuestion && !self.isExclamation && self.isCapital && self.isNumber) {
        response = sure;
    }else
    
    if (self.isEmpty && !self.isQuestion && !self.isExclamation) {
       response = fine;
    } else
        
    if (!self.isEmpty && self.isQuestion  && !self.isCapital && !self.isNumber) {
        response = sure;
    }else
        
    if (!self.isEmpty && self.isCapital) {
        response = woah;
    }else {
        response = whatever;
    }
   
    
    return response;
}








@end
