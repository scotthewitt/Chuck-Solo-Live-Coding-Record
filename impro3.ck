adc => Gain g => JCRev j => Gain gg => dac;

while(1)
{
0.9 => g.gain;
50::ms => now;
0.0 => g.gain;
250::ms => now;
}
