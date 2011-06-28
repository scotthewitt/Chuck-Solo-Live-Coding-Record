SawOsc n => Gain g => dac;
g => JCRev j => dac;

260 => n.gain;

function void gater()
{
while(1)
{
 0.0 => g.gain;
25::ms => now;
0.9 => g.gain;
25::ms => now;
}
}

spork ~ gater();

while(1)
{
0.7 => n.gain => j.gain;
80::ms => now;
0.0 => n.gain => j.gain;
1600::ms => now;
}
