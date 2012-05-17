Noise n => Envelope e => dac;

e => Delay d => JCRev j => dac;

j => Gain g => Delay dd => d;

0.1 => g.gain;

5000::ms => d.max => dd.max;

2000::ms => d.delay;

3000::ms => dd.delay; 

0.8 => n.gain;
0.5 => j.gain;

300::ms => e.duration;
0.9 => e.target;
1 => e.keyOn;
300::ms => now;
0.0 => e.target;
0 => e.keyOn;
300::ms => now;

11000::ms => now;
