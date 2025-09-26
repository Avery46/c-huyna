using System;


class Program
{
    static void Main()
    {
        
        Console.Write("enter the mes: ");
        string a = Console.ReadLine();
        a = a.ToLower().Replace(" ", "");
        int b = 1;


            for(int i = 0; i<a.Length/2; i++)
            {
               
                if(a[i] != a[a.Length-1-i])
                {
                    b = 0;
                    Console.Write(" huyna");
                    break; 
                }
                
            }
        if(b == 1)
        {Console.Write(" NICE ");}
           
                
        
        
    }
    
