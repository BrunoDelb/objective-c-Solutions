//
//  Etl.h
//  exercismObjc
//
//  Created by Cheyo Jimenez on 4/9/16.
//  Copyright © 2016 Cheyo Jimenez. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NSArray<NSString*> NSArrayString;
typedef NSDictionary<NSString*, NSNumber*> NSDictionaryStringNumber;
typedef NSDictionary<NSNumber*, NSArrayString* > NSDictionaryNumberArrayString;

@interface ETL : NSObject

+(NSDictionaryStringNumber*)transformTyped:(NSDictionaryNumberArrayString *) input;
+(NSDictionary *)transform:(NSDictionary *) input;


@end
