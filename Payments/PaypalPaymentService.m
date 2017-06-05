//
//  PaypalPaymentService.m
//  Payments
//
//  Created by Elle Ti on 2017-06-04.
//  Copyright © 2017 Elle Ti. All rights reserved.
//

#import "PaypalPaymentService.h"

@implementation PaypalPaymentService

- (void)processPaymentAmount:(NSInteger)paymentAmount
{
    if ([self canProcessPayment])
    {
        NSLog(@"Paypal processed amount $%ld.", (long)paymentAmount);
    }
    else
    {
        NSLog(@"Paypal cannot process your payment at this time");
    }
}

- (BOOL)canProcessPayment
{
    int processPayment = arc4random_uniform(2);
    switch (processPayment)
    {
        case 0:
            return NO;
            break;
        case 1:
            return YES;
        default:
            break;
    }
    return 0;
}

@end
