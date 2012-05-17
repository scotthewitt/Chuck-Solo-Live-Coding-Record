Noise n => Envelope e => dac;

e => Delay d => JCRev j => dac;

5000::ms => d.max;

2000::ms => d.delay; 

0.1 => n.gain;
0.5 => j.gain;

300::ms => e.duration;
0.9 => e.target;
1 => e.keyOn;
300::ms => now;
0.0 => e.target;
0 => e.keyOn;
300::ms => now;

10000::ms => now;
