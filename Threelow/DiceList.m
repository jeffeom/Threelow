//
//  DiceList.m
//  Threelow
//
//  Created by Jeff Eom on 2016-06-29.
//  Copyright © 2016 Jeff Eom. All rights reserved.
//

#import "DiceList.h"

@implementation DiceList

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.usersDices = [[NSMutableArray alloc] init];
        self.collectionOfHeldDice = [NSMutableSet set];
    }
    return self;
}

-(void)rollDice {
    for (Dice * aDie in self.usersDices) {
        if(![self.collectionOfHeldDice containsObject:aDie]) {
            [aDie randomizeValue];
            [aDie printValue];
        }
    }
    [self printList];
}

-(void)addDice:(Dice *)playerDice{
    [self.usersDices addObject: playerDice];
}

-(void)resetDice{
    
    if([self.collectionOfHeldDice count] != 0){
        [self.collectionOfHeldDice removeAllObjects];
    }
    
}

-(void)holdDiceAtIndex:(NSInteger)index{
    Dice *aDie = self.usersDices[index - 1];
    if([self.collectionOfHeldDice containsObject:aDie]){
        [self.collectionOfHeldDice removeObject:aDie];
    }else{
        [self.collectionOfHeldDice addObject: aDie];
    }
}

- (void)printList{
    NSLog(@"Your Collection of held Dices:");
    NSLog(@"^");
    for(Dice *heldDices in self.collectionOfHeldDice){
        NSLog(@"%d", heldDices.currentValue);
    }
    NSLog(@"v");
}

-(void)scoreCard{
    
    NSInteger totalScore = 0;
    
    for(Dice *heldDices in self.collectionOfHeldDice){
        if(heldDices.currentValue != 3){
            totalScore = totalScore + heldDices.currentValue;
        }
    }
    
    NSLog(@"Your Total Score is: %li", (long)totalScore);
}


@end
