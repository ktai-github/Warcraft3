//
//  Footman.m
//  WarCarftIII
//
//  Created by Aaron Dufall on 5/05/2014.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Footman.h"

@implementation Footman

-(instancetype)init{
  self = [super init];
  if (self = [super init]) {
    self.healthPoints = 60;
    self.attackPower = 10;
  }
  return self;
}

//- (NSString *)score:(int)right Wrong:(int)wrong {

- (void) damage:(int)hp {
  self.healthPoints -= hp;
}

- (void) attack:(Unit *)unit withDamage:(int)hp {
  unit.healthPoints -= hp;
}
@end
