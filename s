using System;

class Program
{
    static double CalcS(double a, double b, double c)
    {
        double p = (a + b + c) / 2;

        double s = Math.Sqrt(p * (p - a) * (p - b) * (p - c));
        return s;
    }

    static void Main()
    {
        
        double maxS = -1;  // Максимальная площадь (инициализируем отрицательным, чтобы обновить)
        int maxN = -1;    // Номер треугольника с максимальной площадью (с 1)

        for (int i = 1; i <= 10; i++)
        {
            Console.WriteLine($"ent 3 num(use space): ");
            string input = Console.ReadLine();
            string[] all = input.Split(' ');
            if (!double.TryParse(all[0], out double a) ||
                !double.TryParse(all[1], out double b) ||
                !double.TryParse(all[2], out double c))
            {
                Console.WriteLine("enter num");
                i--;  
                continue;
            }

            double s = CalcS(a, b, c);
                if (s > maxS)
                {
                    maxS = s;
                    maxN = i;
                }
            

        }

        if (maxN != -1)
        {
            Console.WriteLine($"\nТреугольник с наибольшей площадью: №{maxN} (площадь: {maxS:F2})");
        }

    
    }
}
