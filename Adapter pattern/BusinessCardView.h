//
//  BusinessCardView.h
//  Adapter pattern
//
//  Created by Monstar on 16/8/3.
//  Copyright © 2016年 Monstar. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol BusinessCardAdapterProtcol <NSObject>

- (NSString *)name;

- (NSString *)phoneNumber;

@end

@interface BusinessCardView : UIView<BusinessCardAdapterProtcol>


- (void)loadData:(id<BusinessCardAdapterProtcol>)data;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *phoneNumber;

@end
