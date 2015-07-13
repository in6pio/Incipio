<?php

/*
 * This file is part of the Incipio package.
 *
 * (c) Théo FIDRY <theo.fidry@gmail.com>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

namespace FrontBundle\Utils;

/**
 * Class RoleHierarchyHelper.
 *
 * @author Théo FIDRY <theo.fidry@gmail.com>
 */
class RoleHierarchyHelper
{
    /**
     * @var array List of roles ordered in descending order of level access granted.
     */
    private $roles = [
        'ROLE_SUPER_ADMIN' => null,
        'ROLE_ADMIN' => null,
        'ROLE_USER' => null,
    ];

    /**
     * Extract the top level role from a list of roles.
     *
     * @param array $roles List of roles.
     *
     * @return null|string
     */
    public function getTopLevelRole(array $roles)
    {
        $roles = array_flip(array_values($roles));

        foreach ($this->roles as $topRole => $null) {
            if (isset($roles[$topRole])) {
                return $topRole;
            }
        }

        return;
    }
}
