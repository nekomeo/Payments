//
//  PaymentGateway.h
//  Payments
//
//  Created by Elle Ti on 2017-06-02.
//  Copyright © 2017 Elle Ti. All rights reserved.
//

#import <Foundation/Foundation.h>
@class PaymentGateway;

@protocol PaymentDelegate <NSObject>
- (void)processPaymentAmount:(NSInteger)paymentAmount;
- (BOOL)canProcessPayment;

@end

@interface PaymentGateway : NSObject

@property (nonatomic, weak) id <PaymentDelegate> paymentDelegate;
- (void)processPaymentAmount:(NSInteger)amount;

@end
