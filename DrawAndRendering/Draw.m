//
//  Draw.m
//  DrawAndRendering
//
//  Created by mob on 2018/11/1.
//  Copyright © 2018年 mob. All rights reserved.
//

#import "Draw.h"

@implementation Draw

-(id)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [(CATiledLayer *)self.layer setTileSize:CGSizeMake(100 * self.contentScaleFactor, 100*self.contentScaleFactor)];
    }
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 400.100000, 100.333333)];
    label.text = @"hahahahahhahahahahahahhahahahahahahhahahahahahahhahahahahahahhahahahahahahhahahahahahahhahahahahahahhahahahahahahhahahahahahahhahahahahahahhahahahahahahhahahahahahahhahahahahahahhaha";
    [self addSubview:label];
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(50, 250, 200, 200)];
    imageView.image = [UIImage imageNamed:@"750*1334"];
    [self addSubview:imageView];
    self.layer.shouldRasterize = YES;
    return self;
}

+(Class)layerClass
{
    return [CATiledLayer class];
}

-(void)drawRect:(CGRect)rect
{
    CGContextRef con = UIGraphicsGetCurrentContext();
    CGContextAddEllipseInRect(con, CGRectMake(0, 0, 100, 200));
    CGContextSetRGBFillColor(con, 0, 0, 1, 1);
    CGContextFillPath(con);

}

//-(void)drawLayer:(CALayer *)layer inContext:(CGContextRef)ctx
//{
//    CGContextAddEllipseInRect(ctx, CGRectMake(0, 0, 100, 200));
//    CGContextSetRGBFillColor(ctx, 0, 0, 1, 1);
//    CGContextFillPath(ctx);
//}

@end
