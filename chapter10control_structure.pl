#! /usr/bin/perl
use 5.010;
my $state = 62;
my $musk = 1 << 0;
unless ($state & $musk){
    say "星期日不用上班！";
}
#        192:PerlFirst zhengjun$ perl chapter10control_structure.pl
#        星期日不用上班！

say "星期五要上班！" if $state & 1 << 5;
#        192:PerlFirst zhengjun$ perl chapter10control_structure.pl
#        星期五要上班！

#    {
#        say "Please enter a number:";
#        chomp(my $n = <STDIN>);
#        my $root = sqrt $n;
#        say "The square root of $n is $root";
#    }
#
#        Please enter a number:
#        2.4
#        The square root of 2.4 is 1.54919333848297

my @people = qw/fred barney bam-bam wilma dino barney betty pebbles/;
my %seen;
foreach (@people){
    say "I've seen you somewhere before, $_" if $seen{$_}++;
}
#        I've seen you somewhere before, barney

for(my $i = 1;$i < 128;$i++){
    say "$i 要上班！" if $i & 1 << 4;
}
say '$i = '.$i if defined($i);

#    while(<STDIN>){
#        if(/_END_/){
#            last;
#        } elsif (/fred/) {
#            print;
#        }
#    }
#        barney
#        betty
#        fred
#        fred
#        _END_

#    my $total = 0;
#    my $valid = 0;
#    my %count;
#    while (<>){
#        foreach (split){
#            $total++;
#            next if /\W/;
#            $valid++;
#            $count{$_}++;
#        }
#    }
#    say "Total things = $total, valid words = $valid";
#    foreach (sort keys %count){
#        say "$_ => $count{$_}";
#    }
#        Total things = 459, valid words = 167
#        0 => 1
#        0x0 => 1
#        1 => 1
#        106 => 2
#        2 => 1
#        28 => 2
#        2889 => 2
#        3 => 1
#        Apple_PubSub_Socket_Render => 1
#        BB_DOC_LANGUAGE => 1
#        BB_DOC_MODE => 1
#        BB_DOC_NAME => 1
#        BB_DOC_PATH => 1
#        BB_DOC_SELEND => 1
#        BB_DOC_SELEND_COLUMN => 1
#        BB_DOC_SELEND_LINE => 1
#        BB_DOC_SELSTART => 1
#        BB_DOC_SELSTART_COLUMN => 1
#        BB_DOC_SELSTART_LINE => 1
#        Darwin => 1
#        GRADLE_HOME => 1
#        GROOVY_HOME => 1
#        HOME => 1
#        LOGNAME => 1
#        PATH => 1
#        PWD => 1
#        PYTHONIOENCODING => 1
#        Perl => 1
#        SDKMAN_CANDIDATES_DIR => 1
#        SDKMAN_CURRENT_API => 1
#        SDKMAN_DIR => 1
#        SDKMAN_LEGACY_API => 1
#        SDKMAN_PLATFORM => 1
#        SDKMAN_VERSION => 1
#        SHELL => 1
#        SHLVL => 1
#        SSH_AUTH_SOCK => 1
#        TMPDIR => 1
#        USER => 1
#        Use => 1
#        VERSIONER_PERL_PREFER_32_BIT => 1
#        VERSIONER_PERL_VERSION => 1
#        XPC_FLAGS => 1
#        XPC_SERVICE_NAME => 1
#        _ => 1
#        __CF_USER_TEXT_ENCODING => 1
#        a => 5
#        at => 1
#        barney => 6
#        betty => 5
#        card => 5
#        delete => 1
#        dino => 4
#        each => 1
#        experimental => 1
#        flintstone => 4
#        for => 5
#        foreach => 4
#        fred => 7
#        has => 4
#        heard => 3
#        is => 6
#        keys => 2
#        library => 5
#        line => 1
#        my => 12
#        no => 1
#        of => 4
#        pebble => 1
#        perl => 1
#        print => 6
#        rubble => 8
#        say => 7
#        sort => 1
#        use => 1
#        utf_8 => 1
#        values => 1
#        while => 1
#        wilma => 1
#        zhengjun => 2

#    @words = qw /fred barney pebbles dino wilma betty/;
#    my $errors = 0;
#    foreach (@words){
#        say "Type the word '$_':";
#        chomp(my $try = <STDIN>);
#        if($try ne $_){
#            say "Sorry,that's not right.\n";
#            $errors++;
#            redo;
#        }
#    }
#        Type the word 'fred':
#        fred
#        Type the word 'barney':
#        barney
#        Type the word 'pebbles':
#        pebble
#        Sorry,that's not right.
#
#        Type the word 'pebbles':
#        pebble
#        Sorry,that's not right.
#
#        Type the word 'pebbles':
#        pebbles
#        Type the word 'dino':
#        dino
#        Type the word 'wilma':
#        wilma
#        Type the word 'betty':
#        betty

#    foreach (1..10){
#        say "Iteration number $_";
#        say "Please choose:last,next or redo,or none of above?";
#        chomp(my $choice = <STDIN>);
#        say "";
#        last if $choice =~ /last/i;
#        next if $choice =~ /next/i;
#        redo if $choice =~ /redo/i;
#        say "That wasn't any of the choices...Onward!\n";
#    }
#    say "That's all,folks!";

#    say "What is your size of feet?";
#    my $size = <STDIN>;
#    chomp $size;
#    my $desc =
#        ($size <= 38)?"small":
#        ($size <= 40)?"media":
#        ($size <= 42)?"large":
#        "media";
#    say "Your shoe size is $desc";
#
#        What is your size of feet?
#        39
#        Your shoe size is media

my %dessert;
say "How many cakes are ready?";
$dessert{'cake'} = chomp(<STDIN>);
say "How many ice creams are ready?";
$dessert{'ice cream'} = chomp(<STDIN>);

if($dessert{'cake'} && $dessert{'ice cream'}){
    say "Hooray!Cake and ice cream!";
}
elsif($dessert{'cake'} && $dessert{'ice cream'}){
    say "That's still good.";
} else {
    say "Hmm...";
}