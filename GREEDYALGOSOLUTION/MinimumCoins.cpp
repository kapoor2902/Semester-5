int minimumCoins(int p)
{
    // write your code here
    int coins[]={1,2,5,10,20,50,100,500,1000};
    int n=9;
    int c=0;
    for(int i=n-1;i>=0;i--){
        while(p>=coins[i]){
            p-=coins[i];
            c++;
        }
    }
    return c;
}