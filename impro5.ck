adc => Delay d => Gain su =>  Gain g => blackhole; 

d => Delay dd => su;

dd => Delay ddd => su;

500::ms => d.max => dd.max => ddd.max;

300::ms => d.delay => dd.delay => ddd.delay;

SawOsc s => JCRev j => Gain gg => dac;

6260 => s.freq;

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
g.last() * 0.6 => gg.gain;
1::samp => now;
}
}

spork ~ re();

1::day => now;
