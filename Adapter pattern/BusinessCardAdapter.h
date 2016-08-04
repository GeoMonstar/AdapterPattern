//
//  BusinessCardAdapter.h
//  Adapter pattern
//
//  Created by Monstar on 16/8/3.
//  Copyright © 2016年 Monstar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BusinessCardView.h"
@interface BusinessCardAdapter : NSObject<BusinessCardAdapterProtcol>
@property (nonatomic, weak)id data;
- (instancetype)initWithData:(id)data;
@end
