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
#import "AmazonPaymentService.h"
#import "PaypalPaymentService.h"
#import "StripePaymentService.h"
#import "ApplePaymentService.h"

#define NSLog(FORMAT, ...) printf("%s\n", [[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String]);


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSInteger dollarValue = arc4random_uniform(900) + 100;
        NSLog(@"Thank you for shopping at Acme.com\nYour total today is $%ld\nPlease select your payment method:\n1: Paypal, 2: Stripe, 3: Amazon, 4: Apple", (long)dollarValue);
        
        NSString *responseString = [InputCollector inputForPrompt:@""];
        
        NSInteger responseInt = [responseString integerValue];
        
        id<PaymentDelegate> paymentMethod;
        
        switch (responseInt) {
            case 1:
                paymentMethod = [PaypalPaymentService new];
                break;
            
            case 2:
                paymentMethod = [StripePaymentService new];
                break;
            
            case 3:
                paymentMethod = [AmazonPaymentService new];
                break;
                
            case 4:
                paymentMethod = [ApplePaymentService new];
                break;
                
            default:
                NSLog(@"That's not a valid choice 😕");
                break;
        }
                
        PaymentGateway *paymentGateway = [PaymentGateway new];
        paymentGateway.delegate = paymentMethod;
        [paymentGateway processPaymentAmount:dollarValue];
        
    }
    return 0;
}
