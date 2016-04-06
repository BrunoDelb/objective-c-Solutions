//
//  Anagram.h
//  Excercises
//
//  Created by Cheyo Jimenez on 11/5/15.
//  Copyright © 2015 Cheyo Jimenez. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Anagram : NSObject

- (id) initWithString:(NSString *) input;

- (NSArray *) match:(NSArray *) input;

@end
