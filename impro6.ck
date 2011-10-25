TriOsc t => JCRev j => Gain g => dac;

0.05 => g.gain;

3000 => t.freq;

1500::ms => now;

SawOsc tt => j;

0.1 => tt.gain;

4000 => t.freq;

1000::ms => now;
