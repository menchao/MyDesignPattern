//
//  AnimalProtocal.h
//  MyDesignPattern
//
//  Created by 门超 on 16/4/4.
//  Copyright © 2016年 Test. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol AnimalProtocal <NSObject>

@property (nonatomic,copy) NSString *name;

/**
 *  吃东西
 */
- (void)eatFood;


/**
 *  移动
 */
- (void)move;

@end
