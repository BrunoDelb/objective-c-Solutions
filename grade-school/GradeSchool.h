//
//  GradeSchool.h
//  exercismObjc
//
//  Created by Cheyo Jimenez on 4/8/16.
//  Copyright © 2016 Cheyo Jimenez. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GradeSchool : NSObject

-(NSDictionary *) db;
-(NSDictionary *)sort;
-(NSArray *)studentsInGrade:(NSNumber*) number;
-(void) addStudentWithName:(NSString *)name andGrade :(NSNumber*) grade;

@end
