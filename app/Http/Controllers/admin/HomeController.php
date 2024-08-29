<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use App\Models\Order;
use App\Models\Product;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class HomeController extends Controller
{
    public function index()
    {
        $totalOrders = Order::where('status', '!=', 'cancelled')->count();
        $totalProducts = Product::count();
        $totalCustomers = User::where('role', 1)->count();
        $totalRevenue = Order::where('status', '!=', 'cancelled')->sum('grand_total');

        // This Month Revenue
        $startDate = Carbon::now()->startOfMonth()->format('Y-m-d');
        $currentDate = Carbon::now()->format('Y-m-d');
        $revenueThisMonth = Order::where('status', '!=', 'cancelled')
            ->whereDate('created_at', '>=', $startDate)
            ->whereDate('created_at', '<=', $currentDate)
            ->sum('grand_total');

        // This Month Revenue
        $lastMonthStartDate = Carbon::now()->subMonth()->startOfMonth()->format('Y-m-d');
        $lastMonthEndtDate = Carbon::now()->subMonth()->endOfMonth()->format('Y-m-d');
        $lastMonthName = Carbon::now()->subMonth()->startOfMonth()->format('M');
        $revenueLastMonth = Order::where('status', '!=', 'cancelled')
            ->whereDate('created_at', '>=', $lastMonthStartDate)
            ->whereDate('created_at', '<=', $lastMonthEndtDate)
            ->sum('grand_total');

        // Last 30 Days Revenue
        $lastthirtyDayStartDate = Carbon::now()->subDays(30)->format('Y-m-d');
        $revenueLastThirtyDays = Order::where('status', '!=', 'cancelled')
            ->whereDate('created_at', '>=', $lastthirtyDayStartDate)
            ->whereDate('created_at', '<=', $currentDate)
            ->sum('grand_total');

        return view('admin.dashboard', [
            'totalOrders' => $totalOrders,
            'totalProducts' => $totalProducts,
            'totalCustomers' => $totalCustomers,
            'totalRevenue' => $totalRevenue,
            'revenueThisMonth' => $revenueThisMonth,
            'revenueLastMonth' => $revenueLastMonth,
            'lastMonthName' => $lastMonthName,
            'revenueLastThirtyDays' => $revenueLastThirtyDays,
        ]);
    }

    public function logout()
    {
        Auth::guard('admin')->logout();
        return redirect()->route('admin.login');
    }
}
