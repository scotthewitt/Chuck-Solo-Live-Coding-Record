Noise n => Envelope e => dac;

e => Delay d => JCRev j => dac;

j => Gain g => Delay dd => d;

0.1 => g.gain;

5000::ms => d.max => dd.max;

2000::ms => d.delay;

3000::ms => dd.delay; 

0.6 => n.gain;
0.5 => j.gain;

//for (0 => int a; a < 10; a++)
//{
10000::ms => e.duration;
0.9 => e.target;
1 => e.keyOn;
10000::ms => now;
0.0 => e.target;
0 => e.keyOn;
10000::ms => now;
500::ms => now;
//}

11000::ms => now;
