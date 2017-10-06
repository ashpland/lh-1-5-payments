//
//  PaypalPaymentService.m
//  Payments
//
//  Created by Andrew on 2017-10-06.
//  Copyright © 2017 Andrew. All rights reserved.
//

#import "PaypalPaymentService.h"
#define NSLog(FORMAT, ...) printf("%s\n", [[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String]);

@implementation PaypalPaymentService

- (void)processPaymentAmount:(NSInteger)amount {
    NSLog(@"Paypal Payment Processed $%lu", amount);
}

@end
