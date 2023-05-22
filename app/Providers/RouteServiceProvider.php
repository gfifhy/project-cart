<?php

namespace App\Providers;

use Illuminate\Cache\RateLimiting\Limit;
use Illuminate\Foundation\Support\Providers\RouteServiceProvider as ServiceProvider;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\RateLimiter;
use Illuminate\Support\Facades\Route;

class RouteServiceProvider extends ServiceProvider
{
    public const HOME = '/home';

    public function boot(): void
    {
        $this->configureRateLimiting();


        $this->routes(function () {
            Route::middleware('api')
                ->prefix('api')
                ->group(base_path('routes/api/public/public.php'));

            Route::middleware('api')
                ->prefix('api')
                ->group(base_path('routes/api/auth/auth.php'));

            Route::middleware(['api', 'auth:sanctum'])
                ->prefix('api/user')
                ->group(base_path('routes/api/buyer/buyer.php'));

            Route::middleware(['api', 'auth:sanctum'])
                ->prefix('api/user')
                ->group(base_path('routes/api/buyer/buyer.php'));

            Route::middleware(['api', 'auth:sanctum'])
                ->prefix('api/admin')
                ->group(base_path('routes/api/admin/admin.php'));

            Route::middleware(['api', 'auth:sanctum'])
                ->prefix('api/telesales')
                ->group(base_path('routes/api/telesales/telesales.php'));


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
            return Limit::perMinute(20)->by($request->user()?->id ?: $request->ip())->response(function (Request $request){
                return $this->throwException('Too many request. Try again later', '429');
            });
        });
    }
}
