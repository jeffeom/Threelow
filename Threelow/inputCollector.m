//
//  inputCollector.m
//  Threelow
//
//  Created by Jeff Eom on 2016-06-29.
//  Copyright © 2016 Jeff Eom. All rights reserved.
//

#import "inputCollector.h"

char inputChars[255];

@implementation inputCollector

-(NSString *)inputForPrompt:(NSString *)promptString{
    
    NSLog(@"%@", promptString);
    fgets(inputChars, 255, stdin);
    NSString *userInput = [NSString stringWithUTF8String:inputChars];
    NSString *formattedUserInput = [userInput stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    return formattedUserInput;
}

@end
