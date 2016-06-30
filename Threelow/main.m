//
//  main.m
//  Threelow
//
//  Created by Jeff Eom on 2016-06-29.
//  Copyright © 2016 Jeff Eom. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "inputCollector.h"
#import "DiceList.h"
#import "GameController.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        inputCollector *userInput = [[inputCollector alloc] init];
        DiceList *playersDicelist = [[DiceList alloc] init];
//        GameController *heldDicelist = [[GameController alloc] init];
        
        Dice *dice1 = [[Dice alloc] init];
        Dice *dice2 = [[Dice alloc] init];
        Dice *dice3 = [[Dice alloc] init];
        Dice *dice4 = [[Dice alloc] init];
        Dice *dice5 = [[Dice alloc] init];
//        Dice *chosenDice = [[Dice alloc] init];
        
        [playersDicelist addDice:dice1];
        [playersDicelist addDice:dice2];
        [playersDicelist addDice:dice3];
        [playersDicelist addDice:dice4];
        [playersDicelist addDice:dice5];
        
        
        while (true){
            
            NSString *playerCommand;
            NSString *diceIndex;
            
            playerCommand = [userInput inputForPrompt:@"Let's Play Threelow"];
            
            if([playerCommand isEqual:@"roll"]){
                NSLog(@"lets play");
                
                [playersDicelist rollDice];
                
//                [dice1 randomizeValue];
//                [dice2 randomizeValue];
//                [dice3 randomizeValue];
//                [dice4 randomizeValue];
//                [dice5 randomizeValue];
//                
//                [dice1 printValue];
//                [dice2 printValue];
//                [dice3 printValue];
//                [dice4 printValue];
//                [dice5 printValue];
                
                diceIndex = [userInput inputForPrompt:@"Choose the dice to hold"];
                NSInteger chosenDice = diceIndex.integerValue;
                
                [playersDicelist holdDiceAtIndex:chosenDice];
                [playersDicelist scoreCard];
//                [playersDicelist printList];
            }else if([playerCommand isEqual:@"reset"]){
                [playersDicelist resetDice];
                [playersDicelist scoreCard];
                NSLog(@"Successfully Reseted!!");
            }
        }
        
    }
    return 0;
}
