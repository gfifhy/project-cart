<?php

namespace App\Providers;

use Illuminate\Cache\RateLimiting\Limit;
use Illuminate\Foundation\Support\Providers\RouteServiceProvider as ServiceProvider;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\RateLimiter;
use Illuminate\Support\Facades\Route;

class RouteServiceProvider extends ServiceProvider
{
    /**
     * The path to your application's "home" route.
     *
     * Typically, users are redirected here after authentication.
     *
     * @var string
     */
    public const HOME = '/home';

    /**
     * Define your route model bindings, pattern filters, and other route configuration.
     */
    public function boot(): void
    {
        $this->configureRateLimiting();


        $this->routes(function () {
            Route::middleware('api')
                ->prefix('api')
                ->group(base_path('routes/api/auth/auth.php'));

            Route::middleware(['api', 'auth:sanctum'])
                ->prefix('api/user')
                ->group(base_path('routes/api/buyer/buyer.php'));


        });
    }
    protected function configureRateLimiting()
    {
        RateLimiter::for('api', function (Request $request) {
            return Limit::perMinute(60 )->by($request->user()?->id ?: $request->ip())->response(function (Request $request){
                return $this->throwException('Too many request. Try again later', '429');
            });
        });

        RateLimiter::for('loginThrottle', function (Request $request) {
            return Limit::perMinute(10)->by($request->user()?->id ?: $request->ip())->response(function (Request $request){
                return $this->throwException('Too many request. Try again later', '429');
            });
        });
    }
}
