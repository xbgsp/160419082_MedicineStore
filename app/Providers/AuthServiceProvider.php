<?php

namespace App\Providers;

use Illuminate\Foundation\Support\Providers\AuthServiceProvider as ServiceProvider;
use Illuminate\Support\Facades\Gate;

class AuthServiceProvider extends ServiceProvider
{
    /**
     * The policy mappings for the application.
     *
     * @var array
     */
    protected $policies = [
        // 'App\Model' => 'App\Policies\ModelPolicy',
    ];

    /**
     * Register any authentication / authorization services.
     *
     * @return void
     */
    public function boot()
    {
        $this->registerPolicies();

        Gate::define('edit-image-permission', function ($user, $permission) {
            return($user->sebagai == 'owner');
        });

        Gate::define('delete-permission', function ($user, $permission) {
            return($user->sebagai == 'owner');
        });

        // Gate::define('delete-permission', 'App\Policies\SupplierPolicy@delete');

        Gate::define('checkmember', 'App\Policies\MemberPolicy@checkmember');
    }
}
