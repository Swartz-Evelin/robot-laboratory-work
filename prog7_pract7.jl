function check(n)
    z=n
     j=2  
     while j*j<=n
         if (mod(n,j)==0)
             while (mod(n,j)==0)
                 n=n/j
             end
         f=f-(f/i)
         end
         if j*j<=n
             j+=1
         else
             j=2
         end
     end
     if (n>1)
         f=f-(f/n)
     end
     
     return f;
 end