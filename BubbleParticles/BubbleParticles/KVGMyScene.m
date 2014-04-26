//
//  KVGMyScene.m
//  BubbleParticles
//
//  Created by vincentsfong on 4/25/14.
//  Copyright (c) 2014 KingVinceGames. All rights reserved.
//

#import "KVGMyScene.h"
@interface KVGMyScene()
@property (assign) NSColorWell *colorWell;
//@property (assign) SKEmitterNode *emitterNode;
@end
@implementation KVGMyScene

-(id)initWithSize:(CGSize)size {    
    if (self = [super initWithSize:size]) {
        /* Setup your scene here */
        
        self.backgroundColor = [SKColor blackColor];
        SKTexture *_bubbleTexture = [SKTexture textureWithImageNamed:@"Bubble.png"];
        SKEmitterNode *_emitterNode = [SKEmitterNode new];
        _emitterNode.particleTexture = _bubbleTexture;
        _emitterNode.particleBirthRate = 80.0;
        _emitterNode.particleColor = [SKColor whiteColor];
        _emitterNode.particleSpeed = -450;
        _emitterNode.particleSpeedRange = 150;
        _emitterNode.particleLifetime = 2.0;
        _emitterNode.particleScale = 0.2;
        _emitterNode.particleAlpha = 0.75;
        _emitterNode.particleAlphaRange = 0.5;
        _emitterNode.particleColorBlendFactor = 1;
        _emitterNode.particleScaleRange = 0.5;
        _emitterNode.position = CGPointMake(CGRectGetWidth(self.frame) / 2, CGRectGetHeight(self.frame) + 10);
        _emitterNode.particlePositionRange = CGVectorMake(CGRectGetMaxX(self.frame), 0);
        [self addChild:_emitterNode];
        
        
        
        
        
        
    }
    return self;
}

/*-(void)mouseDown:(NSEvent *)theEvent {
 
    
    CGPoint location = [theEvent locationInNode:self];
    
    SKSpriteNode *sprite = [SKSpriteNode spriteNodeWithImageNamed:@"Spaceship"];
    
    sprite.position = location;
    sprite.scale = 0.5;
    
    SKAction *action = [SKAction rotateByAngle:M_PI duration:1];
    
    [sprite runAction:[SKAction repeatActionForever:action]];
    
    [self addChild:sprite];
}*/

-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

@end
