using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;

namespace ConsoleApp2
{
    class Matrix
    {
        static readonly object locker = new object();
        Random rand;
        const string lit = "QWERTYUIOPASDFGHJKLZXCVBNM123456789";
        public int Colunm { get; set; }
        public Matrix(int col)
        {
            Colunm = col;
            rand = new Random((int)DateTime.Now.Ticks);
        }
        private char GetChar()
        {
            return lit.ToCharArray()[rand.Next(0, 35)];
        }
        public void Move()
        {
            int lenght;
            int count;
            while (true)
            {
                count = rand.Next(3, 6);
                lenght = 0;
                Thread.Sleep(rand.Next(20, 5000));
                for (int i = 0; i < 40; i++)
                {
                    lock (locker)
                    {
                        Console.CursorTop = 0;
                        Console.ForegroundColor = ConsoleColor.Black;
                        for (int j = 0; j < i; j++)
                        {
                            Console.CursorLeft = Colunm;
                            Console.WriteLine("█");
                        }
                        if (lenght < count)
                            lenght++;
                        else
                            if (lenght == count)
                            count = 0;
                        if (39 - i < lenght)
                            lenght--;
                        Console.CursorTop = i - lenght + 1;
                        Console.ForegroundColor = ConsoleColor.DarkGray;
                        for (int j = 0; j < lenght - 2; j++)
                        {
                            Console.CursorLeft = Colunm;
                            Console.WriteLine(GetChar());

                        }
                        if (lenght >= 2)
                        {
                            Console.ForegroundColor = ConsoleColor.Green;
                            Console.CursorLeft = Colunm;
                            Console.WriteLine(GetChar()); ;
                        }
                        if (lenght >= 1)
                        {
                            Console.ForegroundColor = ConsoleColor.Yellow;
                            Console.CursorLeft = Colunm;
                            Console.WriteLine(GetChar()); ;

                        }

                    }
                }
            }
        }
        class Program
        {
            static void Main()
            {
                Console.SetWindowSize(60, 40);


                Console.WriteLine("Hello GitHub");
            }
        }
    }
}
