using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp2
{class Matrix
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

        }
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Hello GitHub");
        }
    }
}
