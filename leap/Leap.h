//
//  Leap.h
//  exercismObjc
//
//  Created by Cheyo Jimenez on 4/9/16.
//  Copyright © 2016 Cheyo Jimenez. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Year : NSObject

-(id)initWithCalendarYear: (NSNumber *) number;
-(BOOL)isLeapYear;
@end
