//
//  BusinessCardAdapter.m
//  Adapter pattern
//
//  Created by Monstar on 16/8/3.
//  Copyright © 2016年 Monstar. All rights reserved.
//

#import "BusinessCardAdapter.h"

@implementation BusinessCardAdapter
@synthesize data = _data;
- (instancetype)initWithData:(id)data{
    self = [super init];
    if (self) {
        self.data = data;
    }
    return self;
}

- (NSString *)name{
    
    return nil;
}
- (NSString *)phoneNumber{
    return nil;
}


@end
