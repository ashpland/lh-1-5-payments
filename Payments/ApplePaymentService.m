//
//  ApplePaymentService.m
//  Payments
//
//  Created by Andrew on 2017-10-06.
//  Copyright © 2017 Andrew. All rights reserved.
//

#import "ApplePaymentService.h"
#define NSLog(FORMAT, ...) printf("%s\n", [[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String]);

@implementation ApplePaymentService

- (bool)canProcessPayment { 
    return arc4random_uniform(2);
}

- (void)processPaymentAmount:(NSInteger)amount { 
    NSLog(@"Apple Payment Processed $%lu", amount);

}

@end
