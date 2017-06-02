//
//  main.m
//  Payments
//
//  Created by Elle Ti on 2017-06-02.
//  Copyright © 2017 Elle Ti. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSInteger randomNumber = arc4random_uniform(1000 - 100 + 1);
        NSLog(@"Thank you for shopping at Acme.com Your total today is $%lu. Please select your payment method: 1: Paypal, 2: Stripe, 3: Amazon", randomNumber);
    }
    return 0;
}
