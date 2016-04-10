//
//  ViewController.m
//  MyDesignPattern
//
//  Created by 门超 on 16/4/3.
//  Copyright © 2016年 Test. All rights reserved.
//

#import "ViewController.h"
#import "AnimalFactory.h"
#import "Animal.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (nonatomic,strong) NSArray *dataArray;

@end

@implementation ViewController

#pragma mark - life cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.dataArray = [NSArray arrayWithObjects:@"简单工厂",@"抽象工厂", nil];

   
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - event



#pragma mark - tableview delegate

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return [self.dataArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath{
    static NSString *identifier = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier forIndexPath:indexPath];
    cell.textLabel.text = self.dataArray[[indexPath row]];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
   // self.navigationController pushViewController:<#(nonnull UIViewController *)#> animated:<#(BOOL)#>
    switch (indexPath.row) {
        case 0:
            [self simpleFactory];
            break;
            
        default:
            break;
    }
    
}

#pragma mark -  pattern method

- (void)simpleFactory{
    
    Animal *chicken = [AnimalFactory createAnimalWithName:@"chicken"];
    [chicken eatFood];
    [chicken move];
    
    
    Animal *dog = [AnimalFactory createAnimalWithName:@"dog"];
    [dog eatFood];
    [dog move];

    
    
}



@end
