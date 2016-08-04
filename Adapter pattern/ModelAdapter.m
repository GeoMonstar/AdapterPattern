//
//  ModelAdapter.m
//  Adapter pattern
//
//  Created by Monstar on 16/8/3.
//  Copyright © 2016年 Monstar. All rights reserved.
//

#import "ModelAdapter.h"
#import "DataModel.h"
#import "NewDataModel.h"
@implementation ModelAdapter
- (instancetype)initWithData:(id)data{
    self = [super init];
    if (self) {
        self.data = data;
    }
    return self;
}
//根据类名适配
- (NSString *)name{
    NSString *name = nil;
    if ([self.data isMemberOfClass:[DataModel class]]) {
         DataModel *data = self.data;
         name = data.name;
    }
    else if ([self.data isMemberOfClass:[NewDataModel class]]){
        NewDataModel *data = self.data;
        name = data.name;
    }
   
    return name;
}



- (NSString *)phoneNumber{
    
    NSString *phoneNumber = nil;
    if ([self.data isMemberOfClass:[DataModel class]]) {
        DataModel *data = self.data;
        phoneNumber = data.phoneNumber;
    }
    else if ([self.data isMemberOfClass:[NewDataModel class]]){
        NewDataModel *data = self.data;
        phoneNumber = data.phoneNumber;
    }
    
    return phoneNumber;
}
@end
