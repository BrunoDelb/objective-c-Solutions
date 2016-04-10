//
//  PhoneNumber.h
//  exercismObjc
//
//  Created by Cheyo Jimenez on 4/8/16.
//  Copyright © 2016 Cheyo Jimenez. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PhoneNumber : NSObject

-(id) initWithString:(NSString *)input;
-(NSString *) number;
-(NSString *) areaCode;
-(NSString *) description;


@end
