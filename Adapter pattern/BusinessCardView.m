//
//  BusinessCardView.m
//  Adapter pattern
//
//  Created by Monstar on 16/8/3.
//  Copyright © 2016年 Monstar. All rights reserved.
//

#import "BusinessCardView.h"
#import "BusinessCardAdapter.h"
@interface BusinessCardView ()

@property (nonatomic, strong)UILabel *nameLabel;

@property (nonatomic, strong)UILabel *phoneNumberLabel;

@end

@implementation BusinessCardView
- (void)loadData:(id<BusinessCardAdapterProtcol>)data{
    self.name = [data name];
    self.phoneNumber = [data phoneNumber];
}

- (instancetype)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    if (self) {
        self.frame = frame;
        self.nameLabel = [[UILabel alloc]initWithFrame:CGRectMake(50, 60, 150, 50)];
        self.nameLabel.backgroundColor = [UIColor yellowColor];
        self.phoneNumberLabel = [[UILabel alloc]initWithFrame:CGRectMake(50, 120, 150, 50)];
        self.phoneNumberLabel.backgroundColor = [UIColor yellowColor];
        self.backgroundColor = [UIColor grayColor];
        [self addSubview:self.nameLabel];
        [self addSubview:self.phoneNumberLabel];
    }
    return self;
}
@synthesize name = _name;
@synthesize phoneNumber = _phoneNumber;

- (void)setName:(NSString *)name{
    _name = name;
    _nameLabel.text = name;
    
}
- (NSString *)name{
    return _name;
}
- (void)setPhoneNumber:(NSString *)phoneNumber{
    _phoneNumber = phoneNumber;
    _phoneNumberLabel.text = phoneNumber;
}
- (NSString *)phoneNumber{
    return _phoneNumber;
}
@end
