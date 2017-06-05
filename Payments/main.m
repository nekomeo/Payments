//
//  main.m
//  Payments
//
//  Created by Elle Ti on 2017-06-02.
//  Copyright © 2017 Elle Ti. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"
#import "StripePaymentService.h"
#import "AmazonPaymentService.h"
#import "PaypalPaymentService.h"
#import "ApplePaymentService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char input[10];
        NSInteger randomNumber = arc4random_uniform(900)+100;
        PaymentGateway *paymentGateway = [[PaymentGateway alloc] init];
        
        NSLog(@"Thank you for shopping at Acme.com Your total today is $%lu. Please select your payment method: 1: Paypal, 2: Stripe, 3: Amazon, 4: Apple", randomNumber);
        fgets(input, 10, stdin);
        strtok(input, "\n");
        NSString *inputString = [[NSString alloc] initWithUTF8String:input];
        
        PaypalPaymentService *paypal = [[PaypalPaymentService alloc] init];
        StripePaymentService *stripe = [[StripePaymentService alloc] init];
        AmazonPaymentService *amazon = [[AmazonPaymentService alloc] init];
        ApplePaymentService *apple = [[ApplePaymentService alloc] init];
        
        switch ([inputString intValue])
        {
            case 1:
                paymentGateway.paymentDelegate = paypal;
                [paymentGateway processPaymentAmount:randomNumber];
                break;
            case 2:
                paymentGateway.paymentDelegate = stripe;
                [paymentGateway processPaymentAmount:randomNumber];
                break;
            case 3:
                paymentGateway.paymentDelegate = amazon;
                [paymentGateway processPaymentAmount:randomNumber];
            case 4:
                paymentGateway.paymentDelegate = apple;
                [paymentGateway processPaymentAmount:randomNumber];
            default:
                break;
        }
        
        
        
        
        
        
//        if ([inputString intValue] == 1)
//        {
//            PaypalPaymentService *paypal = [[PaypalPaymentService alloc] init];
//            [paypal processPaymentAmount:randomNumber];
//        }
//        
//        if ([inputString intValue] == 2)
//        {
//            StripePaymentService *stripe = [[StripePaymentService alloc] init];
//            [stripe processPaymentAmount:randomNumber];
//        }
//        
//        if ([inputString intValue] == 3)
//        {
//            AmazonPaymentService *amazon = [[AmazonPaymentService alloc] init];
//            [amazon processPaymentAmount:randomNumber];
//        }
        
    }
    return 0;
}
