//
//  DataModel.h
//  Adapter pattern
//
//  Created by Monstar on 16/8/3.
//  Copyright © 2016年 Monstar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface DataModel : NSObject

@property (nonatomic, copy)NSString *name;
@property (nonatomic, copy)NSString *phoneNumber;
@property (nonatomic, strong)UIColor *lineColor;
@end
