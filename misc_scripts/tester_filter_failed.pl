#!/bin/perl

my $test = "";
while (<STDIN>) {
    if ($_ =~ /Test Func: (.*) -> (.*)/) {
        # new test
        $test = "\n#######################################\n\n";
        $test .= "$_";
    } elsif ($_ =~ /Test Failed!/) {
        $test .= "$_";
        print($test);
    } elsif ($_ =~ /Failed Tests:/) {
        # new results
        $test = "\n#######################################\n\n";
        $test .= "$_";
    } elsif ($_ =~ /Results:/) {
        # test results
        $test .= "$_";
        print($test);
        print("\n---------------------------------------\n");
    } else {
        $test .= "$_";
    }
}