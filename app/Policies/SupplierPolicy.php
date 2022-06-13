<?php

namespace App\Policies;

use App\User;
use Illuminate\Auth\Access\Response;
use Illuminate\Auth\Access\HandlesAuthorization;

class SupplierPolicy
{
    use HandlesAuthorization;

    public function __construct()
    {
        //
    }

    public function delete(User $user)
    {
        return ($user->sebagai == 'owner' ? Response::allow() : Response::deny('You must be a super administrator.'));
    }
}
