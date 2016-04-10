//
//  PhoneNumber.m
//  exercismObjc
//
//  Created by Cheyo Jimenez on 4/8/16.
//  Copyright © 2016 Cheyo Jimenez. All rights reserved.
//

#import "PhoneNumber.h"

@interface PhoneNumber()

@property NSString * value;

@end

@implementation PhoneNumber


-(id) initWithString:(NSString *)input{
    self.value = input;
    return self;
}

-(NSString *) number {
    //NSRange range = NSMakeRange(0, self.value.length);
    NSRange range2 = [self.value rangeOfString:self.value];
    NSMutableString * cleanNum = (NSMutableString *)[self.value stringByReplacingOccurrencesOfString:@"\\D" withString:@""
                                                                options:NSRegularExpressionSearch range:range2];
    
    NSString * firstNum = [cleanNum substringToIndex:1];

    if (cleanNum.length == 11 && [firstNum isEqualToString:@"1"] ){
       cleanNum = (NSMutableString *)[cleanNum substringFromIndex:1];
    }
    if (cleanNum.length == 10){
        return cleanNum;
    }

    return @"0000000000";
}

-(NSString *) areaCode{
    if (![[self number] isEqualToString:@"0000000000"]){
        return [[self number] substringToIndex:3];
    }
    return @"000";
}

-(NSString *) sevenDigitNumber{
    NSMutableString * result = (NSMutableString *)[[self number] substringFromIndex:3];
    
    return [NSString stringWithFormat:@"%@-%@",[result substringToIndex:3],[result substringFromIndex:3]];
}

-(NSString *) description{
    return [NSString stringWithFormat:@"(%@) %@",[self areaCode], [self  sevenDigitNumber] ];
    
}


@end
