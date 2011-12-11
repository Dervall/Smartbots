//
//  Arms.h
//  Smartbots
//
//  Created by Per Dervall on 12/11/11.
//  Copyright (c) 2011 Tretton37. All rights reserved.
//

#ifndef Smartbots_Arms_h
#define Smartbots_Arms_h

#import "isgl3d.h"

class Arms 
{
public:
    Arms();
    ~Arms();
    
    void LoadGeometry(Isgl3dNode* pParentNode);
    
    virtual void Tic(float dt);

private:
    Isgl3dNode* m_pLeftArmNode;
    Isgl3dNode* m_pRightArmNode;
    
};

#endif
