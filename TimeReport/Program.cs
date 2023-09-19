using System;

using System;
using System.Configuration; // Add this namespace to access ConfigurationManager
using Npgsql;

class Program
{
    static void Main(string[] args)
    {
        string connectionString = "Server=dev.kjeldcon.se;Port=5432;Userid=monsters;Password=monsters123;Pooling=false;MinPoolSize=1;MaxPoolSize=20;Timeout=15;SslMode=Disable;Database=monsters";

        PostgresDataAccess dataAccess = new PostgresDataAccess(connectionString);

        // Rest of your application logic here...
    

while (true)
        {
            Console.WriteLine("Time Tracking System Menu:");
            Console.WriteLine("1. Skapa Person: ");
            Console.WriteLine("2. Skapa Projekt: ");
            Console.WriteLine("3. Antalet timmar spenderade: ");
            Console.WriteLine("4. Exit");

            Console.Write("Select an option: ");
            string choice = Console.ReadLine();

            switch (choice)
            {
                case "1":
                    Console.Write("Ange person: ");
                    string personName = Console.ReadLine();
                    dataAccess.InsertPerson(personName);
                    Console.WriteLine("Person skapad.");
                    break;
                case "2":
                    Console.Write("Ange projekt: ");
                    string projectName = Console.ReadLine();
                    dataAccess.InsertProject(projectName);
                    Console.WriteLine("Projekt skapat");
                    break;
                case "3":
                    Console.Write("Ange PersonID: ");
                    int personId = int.Parse(Console.ReadLine());

                    Console.Write("Ange ProjektID: ");
                    int projectId = int.Parse(Console.ReadLine());

                    Console.Write("Ange arbetade timmar: ");
                    int hoursWorked = int.Parse(Console.ReadLine());

                    dataAccess.RecordWorkedHours(personId, projectId, hoursWorked);
                    Console.WriteLine("Timmar loggade. ");
                    break;
                case "4":
                    Environment.Exit(0);
                    break;
                default:
                    Console.WriteLine("Felaktigt val, försök igen.");
                    break;
            }
        }
    }
}
