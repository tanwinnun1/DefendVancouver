//
// Created by Andy on 2018-02-21.
//

#pragma once


#include "../actionNode.hpp"

/**
 * An attack action.
 */

class Attack : public ActionNode {
    STATUS tick(Enemy *enemy, float ms) override;
};

