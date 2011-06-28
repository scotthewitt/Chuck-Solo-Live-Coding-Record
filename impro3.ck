adc => Gain g => JCRev j => Gain gg => dac;

while(1)
{
0.9 => g.gain;
100::ms => now;
0.0 => g.gain;
100::ms => now;
}
