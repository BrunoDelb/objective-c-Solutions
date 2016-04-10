//
//  Leap.m
//  exercismObjc
//
//  Created by Cheyo Jimenez on 4/9/16.
//  Copyright © 2016 Cheyo Jimenez. All rights reserved.
//

#import "Leap.h"

@interface Year()

@property NSNumber* calendarYear;

@end


@implementation Year

-(id)initWithCalendarYear: (NSNumber*) number {
    self.calendarYear = number;
    return self;
}

-(BOOL)isLeapYear{
    if (self.calendarYear.integerValue % 400 == 0){
        return true;
    }
    if (self.calendarYear.integerValue % 100
        && self.calendarYear.integerValue % 4 == 0) {
        return true;
    }
    return false;
}

@end
