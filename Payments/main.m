//
//  main.m
//  Payments
//
//  Created by Andrew on 2017-10-06.
//  Copyright © 2017 Andrew. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "PaymentGateway.h"
#define NSLog(FORMAT, ...) printf("%s\n", [[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String]);


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSInteger dollarValue = arc4random_uniform(1100) + 100;
        NSLog(@"Thank you for shopping at Acme.com\nYour total today is $%ld\nPlease select your payment method:\n1: Paypal, 2: Stripe, 3: Amazon", (long)dollarValue);
        
        NSString *responseString = [InputCollector inputForPrompt:@""];
        
        NSInteger responseInt = [responseString integerValue];
        
        PaymentGateway *paymentGateway = [PaymentGateway new];
        [paymentGateway processPaymentAmount:dollarValue];
        
        
        NSLog(@"%ld", (long)responseInt);
    
    }
    return 0;
}
