SawOsc n => Envelope e => dac;

e => Delay d => JCRev j => dac;

j => Gain g => Delay dd => d;

0.5 => g.gain;

180 => n.freq;

5000::ms => d.max => dd.max;

600::ms => d.delay;

990::ms => dd.delay; 

0.1 => n.gain;
0.7 => j.gain;

for (0 => int a; a < 1; a++)
{
1000::ms => e.duration;
0.9 => e.target;
1 => e.keyOn;
1000::ms => now;
0.0 => e.target;
0 => e.keyOn;
100::ms => now;
a * 100::ms => now;
}

10000::ms => now;
