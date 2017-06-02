//
//  main.m
//  Payments
//
//  Created by Elle Ti on 2017-06-02.
//  Copyright © 2017 Elle Ti. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char input[10];
        
        int randomNumber = arc4random_uniform(1000 - 100 + 1);
        NSLog(@"Thank you for shopping at Acme.com Your total today is $%d. Please select your payment method: 1: Paypal, 2: Stripe, 3: Amazon", randomNumber);
        fgets(input, 10, stdin);
        strtok(input, "\n");
        
        
    }
    return 0;
}
