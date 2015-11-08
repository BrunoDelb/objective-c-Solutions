//
//  Bob.h
//  Excercises
//
//  Created by Cheyo Jimenez on 11/1/15.
//  Copyright © 2015 Cheyo Jimenez. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Bob : NSObject

- (NSMutableCharacterSet *) punctuation;
- (NSMutableCharacterSet *) decimal;
- (NSMutableCharacterSet *) whitespace;
- (NSMutableCharacterSet *) charSetPunDecWhi;

- (NSString *) hey:(NSString *)input;


@property (nonatomic) BOOL isEmpty;
@property (nonatomic) BOOL isQuestion;
@property (nonatomic) BOOL isExclamation;
@property (nonatomic) BOOL isCapital;
@property (nonatomic) BOOL isNumber;



@end
