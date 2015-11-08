//
//  WordCount.h
//  Excercises
//
//  Created by Cheyo Jimenez on 11/3/15.
//  Copyright © 2015 Cheyo Jimenez. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WordCount : NSObject

//@property NSString *words;

- (id) initWithString: (NSString *) input;
- (NSDictionary *) count;

@end
