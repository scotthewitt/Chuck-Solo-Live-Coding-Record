Noise n => dac;
n => JCRev j => dac;


while(1)
{
0.0 => n.gain;
80::ms => now;
0.7 => n.gain;
900::ms => now;
}
