#!/bin/perl

# should be at same directory as this script.
my $path_to_scripts_directory = `pwd`;
my $last_char = substr($path_to_scripts_directory, -1);
if ($last_char eq "\n") {
    $path_to_scripts_directory = substr($path_to_scripts_directory, 0, length($path_to_scripts_directory) - 1);
}
if ($last_char eq "/") {
    $path_to_scripts_directory = substr($path_to_scripts_directory, 0, length($path_to_scripts_directory) - 1);
}
if ($0 =~ /(\.)?(.*)?\/install.pl/) {
    if ($1 eq ".") {
        # if relative path
        $path_to_scripts_directory .= $2;
    } else {
        # if absolute path
        $path_to_scripts_directory = $2;
    }
} else {
    exit(1);
}

my $cmd_set_failed_filter_alias = "echo \"alias failed='$path_to_scripts_directory/tester_filter_failed.pl'\" >> \$HOME/.bashrc";
print("Executing: \n$cmd_set_failed_filter_alias\n");
system($cmd_set_failed_filter_alias);

my $cmd_set_testscan_alias = "echo \"alias testscan='$path_to_scripts_directory/tester_function_scanner.pl'\" >> \$HOME/.bashrc";
print("\nExecuting: \n$cmd_set_testscan_alias\n");
system($cmd_set_testscan_alias);