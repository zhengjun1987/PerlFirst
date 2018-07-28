#!/usr/bin/perl
use 5.010;

$fred = 17;
$barney = 'hello';
say 'barney = '.$barney.' fred = '.$fred;
$barney = $fred+3;
say 'barney = '.$barney.' fred = '.$fred;
$barney = $barney*3;
say 'barney = '.$barney.' fred = '.$fred;
# barney = hello fred = 17
# barney = 20 fred = 17
# barney = 60 fred = 17

$fred += $fred;
say 'barney = '.$barney.' fred = '.$fred;
# barney = 60 fred = 34

say '世间亦有痴于我，'.'岂独伤心是小青。';
# 世间亦有痴于我，岂独伤心是小青。

say "The answer is ",6*7,".";
# The answer is 42.

$meal = 'brontosaurus steak';
$barney = "fred ate a $meal";
say $barney;
$barney = "fred ate a ".$meal;
say $barney;
# fred ate a brontosaurus steak
# fred ate a brontosaurus steak

say "The name is \$fred.";
say "The name is $fred.";
# The name is $fred.
# The name is 34.

$what = "brontosaurus steak";
$n = 3;
say "fred ate $n $whats";
say "fred ate $n $what"."s";
say "fred ate $n ${what}s";
# fred ate 3 
# fred ate 3 brontosaurus steaks
# fred ate 3 brontosaurus steaks

$alef = chr(0x0500);
$alpha = chr(hex('03B1'));
$omega = chr(0x03c9);
say "alef = ".$alef." alpha = ".$alpha." omega = ".$omega;

$name = 'fred';
if($name gt 'fred'){
	say "'$name' comes after 'fred' in sorted order.";
} else {
	say "'$name' doesn't come after 'fred',maybe it's the same string.";
}
# 'fred' doesn't come after 'fred',maybe it's the same string.


