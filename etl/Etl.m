//
//  Etl.m
//  exercismObjc
//
//  Created by Cheyo Jimenez on 4/9/16.
//  Copyright © 2016 Cheyo Jimenez. All rights reserved.
//

#import "Etl.h"

@implementation ETL




+(NSDictionaryStringNumber*)transformTyped:(NSDictionaryNumberArrayString *) input{
    
    NSDictionaryStringNumber * newDict = (NSDictionaryStringNumber *) [NSDictionary dictionary];
    
    for (NSNumber *numberKey in [input allKeys]) {
        
        NSArrayString * arraywithString = [input objectForKey:numberKey];
        
        for (NSString * each  in arraywithString){
            [newDict setValue:numberKey forKey:each];
        }
    }
    
    return newDict;
}

+(NSDictionary *)transform:(NSDictionary *) input{
    return (NSDictionaryStringNumber *)[ETL transformTyped:(NSDictionaryNumberArrayString *) input];
}


@end



//class func transform(input:[Int:[String]])->[String:Int]{
//    
//    var inputNewDict = [String:Int]()
//    
//    for (key,value) in input{
//        for each in value{
//            inputNewDict[each.lowercaseString] = key
//        }
//        
//    }
//    return inputNewDict
//}