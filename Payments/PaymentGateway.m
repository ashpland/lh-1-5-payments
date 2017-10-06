//
//  PaymentGateway.m
//  Payments
//
//  Created by Andrew on 2017-10-06.
//  Copyright © 2017 Andrew. All rights reserved.
//

#import "PaymentGateway.h"
#define NSLog(FORMAT, ...) printf("%s\n", [[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String]);


@implementation PaymentGateway

-(void)processPaymentAmount:(NSInteger)amount
{
    if ([self.delegate canProcessPayment]) {
        [self.delegate processPaymentAmount:amount];
    } else {
        NSLog(@"Payment was unable to be processed");
    }
}

@end
