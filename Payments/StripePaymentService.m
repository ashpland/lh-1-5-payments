//
//  StripePaymentService.m
//  Payments
//
//  Created by Andrew on 2017-10-06.
//  Copyright © 2017 Andrew. All rights reserved.
//

#import "StripePaymentService.h"
#define NSLog(FORMAT, ...) printf("%s\n", [[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String]);

@implementation StripePaymentService

- (void)processPaymentAmount:(NSInteger)amount {
    NSLog(@"Stripe Payment Processed $%lu", amount);
}

- (bool)canProcessPayment {
    return arc4random_uniform(2);
}


@end
