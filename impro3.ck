adc => Gain g => blackhole; 

SawOsc s => JCRev j => Gain gg => dac;

function void in()
{
while(1)
{
0.9 => g.gain;
50::ms => now;
0.0 => g.gain;
250::ms => now;
}
}
spork ~ in();

function void re()
{
while(1)
{
g.last() => gg.gain;
10::ms => now;
}
}

spork ~ re();

1::day => now;
