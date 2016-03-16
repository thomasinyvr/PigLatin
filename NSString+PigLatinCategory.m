//
//  NSString+PigLatinCategory.m
//  PigLatin
//
//  Created by Thomas Friesman on 2016-03-11.
//  Copyright © 2016 Thomas Friesman. All rights reserved.
//

#import "NSString+PigLatinCategory.h"

@implementation NSString (PigLatinCategory)

-(NSString *)stringByPigLatinization {
    
    
    
    
    //componentsSeparatedByString creates an array from a string using the 'space' between words as the separator
    NSArray *wordPhrase = [self componentsSeparatedByString:@" "];
    NSMutableArray *outputPhrase = [[NSMutableArray alloc] init];
    
    
    //create a set of letters(vowelString) and pass that string into *vowels by messaging NSCharacterSet with characterSetWith......
    NSString *vowelString = @"AEIOUaeiou";
    NSCharacterSet *vowels = [NSCharacterSet characterSetWithCharactersInString:vowelString];
    
    //pulls every string from wordPhrase and
    for (NSString *individualWord in wordPhrase) {
        
        //gets the vowels from each individualWord
        NSRange range = [individualWord rangeOfCharacterFromSet:vowels];
        
        
        if (range.location == 0) {
            NSString *outputWord = [NSString stringWithFormat:@"%@way", individualWord];
            [outputPhrase addObject:outputWord];
        } else {
            NSUInteger originLength = range.location;
            NSRange originRange = NSMakeRange(0, originLength);
            NSString *origin = [individualWord substringWithRange:originRange];
            
            NSUInteger remainLength = individualWord.length - range.location;
            NSRange remainRange = NSMakeRange(originLength, remainLength);
            NSString *remain = [individualWord substringWithRange:remainRange];
            
            NSString *outputWord = [NSString stringWithFormat:@"%@%@ay", remain, origin];
            [outputPhrase addObject:outputWord];
            
        }
    } return [outputPhrase componentsJoinedByString:@" "];
    
}

@end
