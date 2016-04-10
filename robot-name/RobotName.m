//
//  RobotName.m
//  exercismObjc
//
//  Created by Cheyo Jimenez on 4/9/16.
//  Copyright © 2016 Cheyo Jimenez. All rights reserved.
//

#import "RobotName.h"

@interface Robot()

@property NSString *randomName;

@end

@implementation Robot

+ (NSString *) generateRandomName{
    NSArray<NSString*> * ABC = @[@"A", @"B", @"C", @"D", @"E", @"F", @"G", @"H", @"I", @"J", @"K", @"L", @"M", @"N", @"O", @"P", @"Q", @"R", @"S", @"T", @"U", @"V", @"W", @"X", @"Y", @"Z"];
    
    NSString* char1 = ABC[(arc4random() % 26)];
    NSString* char2 = ABC[(arc4random() % 26)];
    NSString* char3 = [NSString stringWithFormat:@"%d",arc4random_uniform(10)];
    NSString* char4 = [NSString stringWithFormat:@"%d",arc4random_uniform(10)];
    NSString* char5 = [NSString stringWithFormat:@"%d",arc4random_uniform(10)];

    
    return [NSString stringWithFormat:@"%@%@%@%@%@",char1,char2,char3,char4,char5];
}

-(id) init{
    self.randomName =[Robot generateRandomName];
    return self;
}

-(NSString *)name{
    return self.randomName;
}

-(void)reset{
    self.randomName =[Robot generateRandomName];
}


@end

