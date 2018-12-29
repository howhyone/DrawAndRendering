//
//  ViewController.m
//  DrawAndRendering
//
//  Created by mob on 2018/10/30.
//  Copyright © 2018年 mob. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<CALayerDelegate>
@property(nonatomic, strong)CALayer *drawLayer;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    Draw *drawView = [[Draw alloc] initWithFrame:CGRectMake(0, 0, 5000, 5000)];
    drawView.backgroundColor = [UIColor whiteColor];
    [drawView.layer setNeedsDisplay];
    [self.view addSubview:drawView];

}
-(void)drawLayer:(CALayer *)layer inContext:(CGContextRef)ctx
{
    CGContextAddEllipseInRect(ctx, CGRectMake(0, 0, 100, 200));
    CGContextSetRGBFillColor(ctx, 0, 0, 1, 1);
    CGContextFillPath(ctx);
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    CALayer *drawLayer = [CALayer layer];
    drawLayer.bounds = CGRectMake(0, 0, 100, 100);
    drawLayer.position = CGPointMake(100, 100);
    drawLayer.delegate = self;
    [drawLayer setNeedsDisplay];
    self.drawLayer = drawLayer;
        [self.view.layer addSublayer:self.drawLayer];

}

@end
