//
//  NucleotideCount.h
//  exercismObjc
//
//  Created by Cheyo Jimenez on 4/6/16.
//  Copyright © 2016 Cheyo Jimenez. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DNA : NSObject

- (id) initWithStrand: (NSString *)input;
- (NSUInteger) count:(NSString *)input;
- (NSDictionary *) nucleotideCounts;


@end
