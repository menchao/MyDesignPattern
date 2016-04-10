//
//  AnimalFactory.m
//  MyDesignPattern
//
//  Created by 门超 on 16/4/4.
//  Copyright © 2016年 Test. All rights reserved.
//

#import "AnimalFactory.h"
#import "Dog.h"
#import "Chicken.h"

@implementation AnimalFactory

+ (Animal *)createAnimalWithName:(NSString *)name{
    
    if([name isEqualToString:@"dog"]){
        return [[Dog alloc]init];
        
    }else if([name isEqual:@"chicken"]){
        return [[Chicken alloc]init];
    }
    return [[Animal alloc]init];
}

@end
