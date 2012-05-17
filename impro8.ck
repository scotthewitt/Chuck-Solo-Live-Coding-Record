TriOsc n => Envelope e => dac;

e => Delay d => JCRev j => dac;

j => Gain g => Delay dd => d;

0.5 => g.gain;

340 => n.freq;

5000::ms => d.max => dd.max;

2000::ms => d.delay;

1000::ms => dd.delay; 

0.1 => n.gain;
0.7 => j.gain;

for (0 => int a; a < 10; a++)
{
100::ms => e.duration;
0.9 => e.target;
1 => e.keyOn;
100::ms => now;
0.0 => e.target;
0 => e.keyOn;
100::ms => now;
a * 100::ms => now;
}
