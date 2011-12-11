//
//  Head.h
//  Smartbots
//
//  Created by Per Dervall on 12/11/11.
//  Copyright (c) 2011 Tretton37. All rights reserved.
//

#ifndef Smartbots_Head_h
#define Smartbots_Head_h

#import "isgl3d.h"

class Head 
{
public:
    Head();
    ~Head();
    
    void LoadGeometry(Isgl3dNode* pParentNode);
    
    virtual void Tic(float dt);
private:
    Isgl3dNode* m_pHeadNode;
};

#endif
