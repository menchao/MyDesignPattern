//
//  AnimalFactory.h
//  MyDesignPattern
//
//  Created by 门超 on 16/4/4.
//  Copyright © 2016年 Test. All rights reserved.
//

#import <Foundation/Foundation.h>
@class  Animal;


@interface AnimalFactory : NSObject


+ (Animal *)createAnimalWithName:(NSString *)name;

@end
