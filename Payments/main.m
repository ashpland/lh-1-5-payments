//
//  main.m
//  Payments
//
//  Created by Andrew on 2017-10-06.
//  Copyright © 2017 Andrew. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "InputCollector.h"
#define NSLog(FORMAT, ...) printf("%s\n", [[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String]);


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int dollarValue = arc4random_uniform(1100) + 100;
        NSLog(@"Thank you for shopping at Acme.com\nYour total today is $%d\nPlease select your payment method:\n1: Paypal, 2: Stripe, 3: Amazon", dollarValue);
        
        NSString *responseString = [InputCollector inputForPrompt:@""];
        
        int responseInt = (int)[responseString integerValue];
        
        NSLog(@"%d", responseInt);
    
    }
    return 0;
}
