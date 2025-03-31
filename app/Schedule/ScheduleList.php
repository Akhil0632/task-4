<?php

namespace App\Schedule;

use Illuminate\Console\Scheduling\Schedule;
use App\Jobs\FetchUsers;

class ScheduleList
{
    public function register(Schedule $schedule): void
    {
        $schedule->job(new FetchUsers())->everyMinute();
    }
}
