//
//  DropItBehaviour.m
//  DropIt
//
//  Created by Jean-Paul Gorman on 02/10/2016.
//  Copyright © 2016 Jean-Paul Gorman. All rights reserved.
//

#import "DropItBehaviour.h"

@interface  DropItBehaviour()
@property (strong, nonatomic) UIGravityBehavior *gravity;
@property (strong, nonatomic) UICollisionBehavior *collider;
@property (strong, nonatomic) UIDynamicItemBehavior *animationOptions;

@end

@implementation DropItBehaviour

- (UIDynamicItemBehavior *)animationOptions
{
    if(!_animationOptions) {
        _animationOptions = [[UIDynamicItemBehavior alloc] init];
        _animationOptions.allowsRotation = NO;
    }
    return _animationOptions;
}

- (void)addItem:(id <UIDynamicItem>)item
{
    [self.gravity addItem:item];
    [self.collider addItem:item];
    [self.animationOptions addItem:item];
}

- (void)removeItem:(id <UIDynamicItem>)item
{
    [self.gravity removeItem:item];
    [self.collider removeItem:item];
    [self.animationOptions addItem:item];
}

- (UICollisionBehavior *)collider
{
    if(!_collider) {
        _collider = [[UICollisionBehavior alloc] init];
        _collider.translatesReferenceBoundsIntoBoundary = YES;
    }
    return _collider;
}

- (UIGravityBehavior *)gravity
{
    if(!_gravity) {
        _gravity = [[UIGravityBehavior alloc] init];
        _gravity.magnitude = 0.9;
    }
    
    return _gravity;
}

- (instancetype)init
{
    self = [super init];
    [self addChildBehavior:self.gravity];
    [self addChildBehavior:self.collider];
    [self addChildBehavior:self.animationOptions];
    return self;
}

@end
