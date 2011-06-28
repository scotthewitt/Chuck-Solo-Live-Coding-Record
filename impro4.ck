adc => Gain g => blackhole; 

SawOsc s => JCRev j => Gain gg => dac;

9000 => s.freq;

function void in()
{
while(1)
{
0.9 => g.gain;
100::ms => now;
0.0 => g.gain;
250::ms => now;
}
}
//spork ~ in();

function void re()
{
while(1)
{
g.last() * 0.8 => gg.gain;
1::samp => now;
}
}

spork ~ re();

1::day => now;
