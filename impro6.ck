TriOsc t => JCRev j => Gain g => dac;

0.1 => g.gain;

3000 => t.freq;

500::ms => now;
