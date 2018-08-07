#! /usr/bin/perl
use 5.010;

my %family_name;
$family_name{'fred'} = 'flintstone';
$family_name{'barney'} = 'rubble';

foreach my $person (qw/barney fred/){
	say "I've heard of $person $family_name{$person}.";
}
# 
# 		================================================================================
# 		2018年8月5日 23:20:30
# 		~/Desktop/chapter06hash.pl
# 		--------------------------------------------------------------------------------
# 		I've heard of barney rubble.
# 		I've heard of fred flintstone.

$family_name{'fred'} = 'flintstone';
$family_name{'betty'} .= $family_name{'barney'};

say $family_name{'lincoln'};
my @array = %family_name;
say "@array";
# 		================================================================================
# 		2018年8月5日 23:38:11
# 		~/Desktop/chapter06hash.pl
# 		--------------------------------------------------------------------------------
# 		betty rubble fred flintstone barney rubble

my %last_name = (
	fred => 'flintstone',
	dino => undef,
	barney => 'rubble',
	betty => 'rubble'
);

my @k = keys %last_name;
say "@k";

my @v = values %last_name;
say "@v";
# 		================================================================================
# 		2018年8月5日 23:51:00
# 		~/Desktop/chapter06hash.pl
# 		--------------------------------------------------------------------------------
# 		fred dino barney betty
# 		flintstone  rubble rubble

my $key1,$value1 = ();
while (($key1,$value1) = each %last_name){
	say "$key1 => $value1";
}
# 		fred => flintstone
# 		dino => 
# 		barney => rubble
# 		betty => rubble

foreach  (keys %last_name){
	$value1 = $last_name{$_};
	say "$_ => $value1";
}
# 		================================================================================
# 		2018年8月7日 00:08:55
# 		~/Desktop/PerlFirst/chapter06hash.pl
# 		--------------------------------------------------------------------------------
# 		fred => flintstone
# 		betty => rubble
# 		barney => rubble
# 		dino => 

my %books;
$books{'fred'} = 3;
$books{'wilma'} = 1;
$books{'barney'} = 0;
$books{'pebble'} = undef;

if(exists $books{'dino'}){
	print "Hey,there is a library card for dino.\n";
}

if(exists $books{'pebble'}){
	print "Hey,there is a library card for pebble.\n";
}
if(exists $books{'barney'}){
	print "Hey,there is a library card for barney.\n";
}
# 		================================================================================
# 		2018年8月7日 22:13:10
# 		~/Desktop/PerlFirst/chapter06hash.pl
# 		--------------------------------------------------------------------------------
# 		Hey,there is a library card for pebble.
# 		Hey,there is a library card for barney.

delete $books{"barney"};
foreach my $i (keys %books){
	print "$i has $books{$i} books.\n";
}
# 		pebble has  books.
# 		wilma has 1 books.
# 		fred has 3 books.

my @env_keys = sort keys %ENV;
print "@env_keys\n";
foreach my $_ (@env_keys){
	print "$_ => $ENV{$_}\n";
}

# 			Apple_PubSub_Socket_Render => /private/tmp/com.apple.launchd.yENoQXHmO9/Render
# 			BB_DOC_LANGUAGE => Perl
# 			BB_DOC_MODE => perl
# 			BB_DOC_NAME => chapter06hash.pl
# 			BB_DOC_PATH => /Users/zhengjun/Desktop/PerlFirst/chapter06hash.pl
# 			BB_DOC_SELEND => 2889
# 			BB_DOC_SELEND_COLUMN => 28
# 			BB_DOC_SELEND_LINE => 106
# 			BB_DOC_SELSTART => 2889
# 			BB_DOC_SELSTART_COLUMN => 28
# 			BB_DOC_SELSTART_LINE => 106
# 			GRADLE_HOME => /Users/zhengjun/Desktop/Android Studio.app/Contents/gradle/gradle-3.4.1
# 			GROOVY_HOME => /Users/zhengjun/.sdkman/candidates/groovy/current
# 			HOME => /Users/zhengjun
# 			LOGNAME => zhengjun
# 			PATH => /opt/local/bin:/opt/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/share/dotnet:/Library/Frameworks/Mono.framework/Versions/Current/Commands:/Users/zhengjun/.sdkman/candidates/groovy/current/bin:/opt/local/bin:/opt/local/sbin:/Users/zhengjun/Library/Android/sdk/platform-tools:/Users/zhengjun/Desktop/Android Studio.app/Contents/gradle/gradle-3.4.1/bin:/Users/zhengjun/Library/Android/sdk/platform-tools:/Users/zhengjun/Desktop/Android Studio.app/Contents/gradle/gradle-3.4.1/bin
# 			PWD => /Users/zhengjun/Desktop/PerlFirst
# 			PYTHONIOENCODING => utf_8
# 			SDKMAN_CANDIDATES_DIR => /Users/zhengjun/.sdkman/candidates
# 			SDKMAN_CURRENT_API => https://api.sdkman.io/2
# 			SDKMAN_DIR => /Users/zhengjun/.sdkman
# 			SDKMAN_LEGACY_API => https://api.sdkman.io/1
# 			SDKMAN_PLATFORM => Darwin
# 			SDKMAN_VERSION => 5.5.9+231
# 			SHELL => /bin/bash
# 			SHLVL => 2
# 			SSH_AUTH_SOCK => /private/tmp/com.apple.launchd.kU8koxlyW8/Listeners
# 			TMPDIR => /var/folders/kh/w63l1td955d1s0t6dqs0mzyh0000gn/T/
# 			USER => zhengjun
# 			VERSIONER_PERL_PREFER_32_BIT => no
# 			VERSIONER_PERL_VERSION => 5.18
# 			XPC_FLAGS => 0x0
# 			XPC_SERVICE_NAME => 0
# 			_ => /usr/bin/perl
# 			__CF_USER_TEXT_ENCODING => 0x1F5:0x19:0x34
# 			Use of my $_ is experimental at /Users/zhengjun/Desktop/PerlFirst/TextWranglerRunTemp-chapter06hash.pl line 105.
