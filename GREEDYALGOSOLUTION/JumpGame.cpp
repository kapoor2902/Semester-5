int minJumps(vector<int> &arr) 
{
    // Write your code here.
    int ans=0;
    int current=0;
    int farthest=0;
    
    for(int i=0;i<arr.size()-1;i++){
        farthest=max(farthest,arr[i]+i);
        
        if(current==i){
            current=farthest;
            ans+=1;
        }
    }
    return ans;
}