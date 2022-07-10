<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Carbon\Carbon;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        return view('home');
    }

    public function _test()
    {
        echo "6/42 LOTTO <br>";
        $lotto = [];
        while (!in_array($num = rand(1, 42), $lotto) && count($lotto) != 6) {
            $lotto[] = $num;
        }

        sort($lotto);
        echo implode(' - ', $lotto) . '<br><br>';

        echo "6/45 LOTTO <br>";
        $lotto = [];
        while (!in_array($num = rand(1, 45), $lotto) && count($lotto) != 6) {
            $lotto[] = $num;
        }

        sort($lotto);
        echo implode(' - ', $lotto) . '<br><br>';

        echo "6/49 LOTTO <br>";
        $lotto = [];
        while (!in_array($num = rand(1, 49), $lotto) && count($lotto) != 6) {
            $lotto[] = $num;
        }

        sort($lotto);
        echo implode(' - ', $lotto) . '<br><br>';

        echo "6/55 LOTTO <br>";
        $lotto = [];
        while (!in_array($num = rand(1, 55), $lotto) && count($lotto) != 6) {
            $lotto[] = $num;
        }

        sort($lotto);
        echo implode(' - ', $lotto) . '<br><br>';

        echo "6/58 LOTTO <br>";
        $lotto = [];
        while (!in_array($num = rand(1, 58), $lotto) && count($lotto) != 6) {
            $lotto[] = $num;
        }

        sort($lotto);
        echo implode(' - ', $lotto) . '<br><br>';

        exit;
    }
}
