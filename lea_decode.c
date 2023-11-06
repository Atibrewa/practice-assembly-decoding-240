// Aahanaa (Atibrewa)

long decode(long x, long y) {
    long a = y*36;  // gets split into 4(9y)
    long b = x*72;  // gets split into 8(9y)
    
    return a-b;
}