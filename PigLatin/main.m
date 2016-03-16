//
//  main.m
//  PigLatin
//
//  Created by Thomas Friesman on 2016-03-11.
//  Copyright © 2016 Thomas Friesman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+PigLatinCategory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSLog(@"what do you want to say in Pig Latin? Enter your phrase below\n");
        char str [200];
        fgets (str, 200, stdin);
        
        NSString *inputString = [[NSString alloc]initWithUTF8String:str];
        inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        NSString *outputString = [inputString stringByPigLatinization];
        
        NSLog(@"in english i said : %@", inputString);
        
        NSLog(@"...and in Pig Latin it is pronounced : %@", outputString);
        
        
        
    }
    return 0;
}
