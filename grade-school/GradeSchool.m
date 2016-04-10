//
//  GradeSchool.m
//  exercismObjc
//
//  Created by Cheyo Jimenez on 4/8/16.
//  Copyright © 2016 Cheyo Jimenez. All rights reserved.
//

#import "GradeSchool.h"

@interface GradeSchool()
@property NSMutableDictionary<NSString*, NSNumber*> *database;
@end

@implementation GradeSchool

-(id)init{
    self.database = [NSMutableDictionary dictionary];
    return self;
}

-(NSDictionary *) db{
    NSMutableDictionary<NSNumber *, NSMutableArray<NSString *>*> *temp = [NSMutableDictionary dictionary];
    for (NSString *eachName in self.database.allKeys){
        
        // add Grade:[Name]
        NSNumber * grade = [self.database objectForKey:eachName];
        NSMutableArray<NSString *> *names = [temp objectForKey:grade];
        
        if (names != nil) {
            [names addObject:eachName];
        }else {
            names = [NSMutableArray<NSString *> array];
            [names addObject:eachName];
        }
        [temp setObject:names forKey:grade];
    }
    return temp;
}

-(void) addStudentWithName:(NSString *)name andGrade :(NSNumber*) grade{
    [self.database setObject:grade forKey:name];
}

-(NSArray *)studentsInGrade:(NSNumber*) number{
    NSArray *temp = [[self db] objectForKey:number];
    
    if (temp == nil) {
        return @[];
    }
    
    return [[[ temp sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)] reverseObjectEnumerator] allObjects];
    
}
-(NSDictionary *)sort{
    NSArray *sortedKeys = [[[self db] allKeys] sortedArrayUsingSelector: @selector(compare:)];
    NSMutableDictionary<NSNumber *, NSMutableArray<NSString *>*> *sortedValues = [NSMutableDictionary dictionary];
    for (NSString *key in sortedKeys){
        NSMutableArray<NSString *>* arrayToAdd =
       (NSMutableArray<NSString *>*) [[[self db]objectForKey: key] sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
        
        [sortedValues setObject:arrayToAdd forKey:key];
    }
    return sortedValues;
}



@end
