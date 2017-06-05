//
//  PaypalPaymentService.h
//  Payments
//
//  Created by Elle Ti on 2017-06-04.
//  Copyright © 2017 Elle Ti. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"

@interface PaypalPaymentService : NSObject <PaymentDelegate>
@property (nonatomic, weak) id <PaymentDelegate> paymentDelegate;
- (void)processPaymentAmount:(NSInteger)paymentAmount;
- (BOOL)canProcessPayment;

@end
