//
//  ViewController.m
//  GravityMashRoom
//
//  Created by Fancy on 16/3/2.
//  Copyright © 2016年 Fancy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@property (nonatomic, strong) UIDynamicAnimator *animator;
@property (nonatomic, strong) UIGravityBehavior *gravityBeahavior;
@property (nonatomic, strong) UICollisionBehavior *collisionBehavior;
@property (nonatomic, strong) UIDynamicItemBehavior *itemBehavior;
@property (nonatomic,strong) UIImageView *imageview;
- (IBAction)selectGuanKa:(id)sender;

- (IBAction)gameStart:(id)sender;
@end

@implementation ViewController
{
    float elaticity;
    float friction;
    float resistance;



}
@synthesize imageview;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    
    
    //创建轻拍手势的识别对象
    UIGestureRecognizer *gesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapped:)];
    
    [self.view addGestureRecognizer:gesture];
    //创建动力行为对象
    self.animator = [[UIDynamicAnimator alloc] initWithReferenceView:self.view];
    //创建重力行为对象
    self.gravityBeahavior = [[UIGravityBehavior alloc] initWithItems:nil];
    //创建并设置碰撞行为对象
    self.collisionBehavior = [[UICollisionBehavior alloc] initWithItems: nil];
    
    self.collisionBehavior.translatesReferenceBoundsIntoBoundary = YES;
    
    self.itemBehavior = [[UIDynamicItemBehavior alloc] initWithItems:nil];
    
    elaticity = 0.5;
    friction = 0.5;
    resistance = 0.5;
    
    self.itemBehavior.elasticity = elaticity; //弹力系数
    self.itemBehavior.friction = friction;   //摩擦系数
    self.itemBehavior.resistance = resistance ;//阻力
    //添加动力行为
    [self.animator addBehavior:self.gravityBeahavior];
    [self.animator addBehavior:self.collisionBehavior];
    [self.animator addBehavior: self.itemBehavior];
    
    
    
    self.view.backgroundColor = [UIColor brownColor];
    
    [self performSelector:@selector(show) withObject:self afterDelay:1];
    
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)tapped:(UITapGestureRecognizer *)gesture
{
    UIImage *image = [UIImage imageNamed:@"1.png"];
    imageview = [[UIImageView alloc]  initWithImage:image];
    //imageview.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:imageview];
    CGPoint tappedPos = [gesture locationInView:gesture.view];
    imageview.center = tappedPos;
    //添加条目
    [self.gravityBeahavior addItem:imageview];
    [self.collisionBehavior addItem:imageview];
    [self.itemBehavior addItem:imageview];
    

}

- (void)show
{



    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"提示" message:@"请选择关卡" preferredStyle:UIAlertControllerStyleActionSheet];
    UIAlertAction *first = [UIAlertAction actionWithTitle:@"第一关" style:UIAlertActionStyleDefault handler:^(UIAlertAction *acion){
        
        elaticity = 0.5;
        friction = 0.5;
        resistance = 0.5;
        
        self.itemBehavior.elasticity = elaticity; //弹力系数
        self.itemBehavior.friction = friction;   //摩擦系数
        self.itemBehavior.resistance = resistance ;//阻力
        
    }
];
    UIAlertAction *second = [UIAlertAction actionWithTitle:@"第二关" style:UIAlertActionStyleDefault handler:^(UIAlertAction *acion){
        
        elaticity = 0.9;
        friction = 0.5;
        resistance = 0.5;
        
        self.itemBehavior.elasticity = elaticity; //弹力系数
        self.itemBehavior.friction = friction;   //摩擦系数
        self.itemBehavior.resistance = resistance ;//阻力
        
    }
];
    UIAlertAction *third =  [UIAlertAction actionWithTitle:@"第三关" style:UIAlertActionStyleDefault handler:^(UIAlertAction *acion){
        
        elaticity = 0.4;
        friction = 0.5;
        resistance = 0.5;
        
        self.itemBehavior.elasticity = elaticity; //弹力系数
        self.itemBehavior.friction = friction;   //摩擦系数
        self.itemBehavior.resistance = resistance ;//阻力
        
    }
];
    UIAlertAction *four = [UIAlertAction actionWithTitle:@"第四关" style:UIAlertActionStyleDefault handler:^(UIAlertAction *acion){
        
        elaticity = 1.5;
        friction = 0.5;
        resistance = 0.5;
        
        self.itemBehavior.elasticity = elaticity; //弹力系数
        self.itemBehavior.friction = friction;   //摩擦系数
        self.itemBehavior.resistance = resistance ;//阻力

    
    }];
    [alertController addAction:first];
    [alertController addAction:second];
    [alertController addAction:third];
    [alertController addAction:four];
    [self presentViewController:alertController animated:YES completion:nil];



}
- (IBAction)selectGuanKa:(id)sender {
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"提示" message:@"请选择关卡" preferredStyle:UIAlertControllerStyleActionSheet];
    UIAlertAction *first = [UIAlertAction actionWithTitle:@"第一关" style:UIAlertActionStyleDefault handler:^(UIAlertAction *acion){
        
        elaticity = 0.5;
        friction = 0.5;
        resistance = 0.5;
        
        self.itemBehavior.elasticity = elaticity; //弹力系数
        self.itemBehavior.friction = friction;   //摩擦系数
        self.itemBehavior.resistance = resistance ;//阻力
        
    }
                            ];
    UIAlertAction *second = [UIAlertAction actionWithTitle:@"第二关" style:UIAlertActionStyleDefault handler:^(UIAlertAction *acion){
        
        elaticity = 0.9;
        friction = 0.5;
        resistance = 0.5;
        
        self.itemBehavior.elasticity = elaticity; //弹力系数
        self.itemBehavior.friction = friction;   //摩擦系数
        self.itemBehavior.resistance = resistance ;//阻力
        
    }
                             ];
    UIAlertAction *third =  [UIAlertAction actionWithTitle:@"第三关" style:UIAlertActionStyleDefault handler:^(UIAlertAction *acion){
        
        elaticity = 0.4;
        friction = 0.5;
        resistance = 0.5;
        
        self.itemBehavior.elasticity = elaticity; //弹力系数
        self.itemBehavior.friction = friction;   //摩擦系数
        self.itemBehavior.resistance = resistance ;//阻力
        
    }
                             ];
    UIAlertAction *four = [UIAlertAction actionWithTitle:@"第四关" style:UIAlertActionStyleDefault handler:^(UIAlertAction *acion){
        
        elaticity = 1.5;
        friction = 0.5;
        resistance = 0.5;
        
        self.itemBehavior.elasticity = elaticity; //弹力系数
        self.itemBehavior.friction = friction;   //摩擦系数
        self.itemBehavior.resistance = resistance ;//阻力
        
        
    }];
    [alertController addAction:first];
    [alertController addAction:second];
    [alertController addAction:third];
    [alertController addAction:four];
    [self presentViewController:alertController animated:YES completion:nil];
    

}

- (IBAction)gameStart:(id)sender {
    
    [self.view reloadInputViews];
   
    [[self.view subviews] makeObjectsPerformSelector:@selector(removeFromSuperview)];
   // [imageview removeFromSuperview];
   // [self.view reloadInputViews];
   // [[self.view subviews] makeObjectsPerformSelector:@selector(removeFromSuperview) withObject:self];
    
    
    
    
    }
@end
