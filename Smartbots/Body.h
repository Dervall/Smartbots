//
//  Body.h
//  Smartbots
//
//  Created by Per Dervall on 12/11/11.
//  Copyright (c) 2011 Tretton37. All rights reserved.
//

#ifndef Smartbots_Body_h
#define Smartbots_Body_h

#import "isgl3d.h"

class Body {
public:
    Body();
    ~Body();
    
    void LoadGeometry(Isgl3dNode* pParentNode);
    
    void Tic(float dt);
    
private:
    Isgl3dNode* m_pRightLegNode;
    Isgl3dNode* m_pLeftLegNode;
    Isgl3dNode* m_pBodyNode;
};

#endif
