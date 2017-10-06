//
//  PaymentGateway.h
//  Payments
//
//  Created by Andrew on 2017-10-06.
//  Copyright © 2017 Andrew. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PaymentDelegate<NSObject>

-(void)processPaymentAmount:(NSInteger)amount;

@end


@interface PaymentGateway : NSObject

@property (nonatomic, readwrite, weak) id delegate;

-(void)processPaymentAmount:(NSInteger)amount;

@end
