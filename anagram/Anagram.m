//
//  Anagram.m
//  Excercises
//
//  Created by Cheyo Jimenez on 11/5/15.
//  Copyright © 2015 Cheyo Jimenez. All rights reserved.
//

#import "Anagram.h"

@implementation Anagram

NSString * word;

//                               ^BOOL(id  _Nonnull evaluatedObject, NSDictionary<NSString *,id> * _Nullable bindings)
//NSPredicate *containsString = [NSPredicate predicateWithBlock:^BOOL (NSString *string,  NSDictionary *bindings)
// {
//  
//     return true;
//     
//     
// }];

- (id) initWithString:(NSString *) input;

{
    word = input;
    return self;
}

+ (NSArray<NSString *> *) arrayFromString:(NSString *) input{
    
    NSMutableArray<NSString *> *wordsArray = [NSMutableArray array];
    
    for (int i = 0; i < [input length]; i++) {
        [wordsArray addObject:  [[input lowercaseString ] substringWithRange:NSMakeRange(i, 1)]  ];
    }
    return wordsArray;
}



// lazy(lazy(each.lowercaseString).filter{contains(wordArray,$0)}).array.count
- (NSInteger) contains:(NSString *) string in:(NSArray *) array{
    
    __block NSUInteger count = 0;
    
    void (^filterString)(NSString *obj, NSUInteger idx, BOOL *stop);
    
    filterString = ^void(NSString *obj, NSUInteger idx, BOOL *stop) {
        
        if ([obj isEqualToString:string]){
            count++;
        }
    };
    
    return count;
    
}


- (NSArray *) match:(NSArray<NSString *> *) input{
    
    NSArray<NSString *> *wordsArray = [NSMutableArray array];
    
    // populate the words array with each character of the word varible
    wordsArray = [Anagram arrayFromString:word];
    
    NSMutableArray<NSString *> *returnPassed = [NSMutableArray array];
    
    NSInteger i, count = [input count];
    
    for (i = 0; i<count; i++) {
        
        NSString *each = [input[i] lowercaseString];
        
                if ( [each length] == [word length] ){
                    
//                    NSInteger eachCount = [self contains:<#(NSString *)#> in:<#(NSArray *)#>]
                    //[self arrayFromString:each]
                 if ()
        
                }
        
    }
    
    return [[NSArray alloc] init];
}


//let wordArray = Array(word.lowercaseString)
//var returnPassed = [String]()
//
//for (currentIndex,each) in enumerate(input){
//    if each.lowercaseString.unicodeScalars.endIndex == word.lowercaseString.unicodeScalars.endIndex{
//

//if lazy(lazy(each.lowercaseString).filter{contains(wordArray,$0)}).array.count == wordArray.count{
//            if each.lowercaseString != word.lowercaseString{
//                if lazy(word.lowercaseString).array.sorted(<) == lazy(each.lowercaseString).array.sorted(<){
//                    returnPassed.append(each)
//                }}}}}
//return returnPassed




@end
