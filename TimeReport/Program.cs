using System;
using System.Collections.Generic;

class Program
{
    static int personIdCounter = 1;
    static int projectIdCounter = 1;
    static Dictionary<string, int> personIdMap = new Dictionary<string, int>();
    static Dictionary<string, int> projectIdMap = new Dictionary<string, int>();

    static void Main(string[] args)
    {
        string connectionString = "Server=dev.kjeldcon.se;Port=5432;Userid=monsters;Password=monsters123;Pooling=false;MinPoolSize=1;MaxPoolSize=20;Timeout=15;SslMode=Disable;Database=monsters";

        PostgresDataAccess dataAccess = new PostgresDataAccess(connectionString);

        string personName; 
        string projectName;

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
                    personName = Console.ReadLine();
                    dataAccess.InsertPerson(personName); //Generate personID
                    personIdMap[personName] = personIdCounter; //connects generated id to persons
                    personIdCounter++; // introduced counter to generate unique IDs for persons
                    Console.WriteLine("Person skapad.");
                    break;
                case "2":
                    Console.Write("Ange projekt: ");
                    projectName = Console.ReadLine();
                    Console.WriteLine($"Before increment: projectIdCounter = {projectIdCounter}");
                    dataAccess.InsertProject(projectName, projectIdCounter); //Generates project ID
                    projectIdMap[projectName] = projectIdCounter; //Connects project ID to name
                    projectIdCounter++; //makes sure that the ID is unique
                    Console.WriteLine($"After increment: projectIdCounter = {projectIdCounter}");
                    Console.WriteLine("Projekt skapat");
                    break;



                case "3":
                    Console.Write("Ange personens namn: ");
                    personName = Console.ReadLine();

                    Console.Write("Ange projektets namn: ");
                    projectName = Console.ReadLine();

                    Console.Write("Ange arbetade timmar: ");
                    int hoursWorked = int.Parse(Console.ReadLine());

                    // Look up person and project IDs based on their names
                    int personId = dataAccess.GetPersonIdByName(personName);
                    int projectId = dataAccess.GetProjectIdByName(projectName);

                    // checks if valid persons
                    if (personId == -1 || projectId == -1)
                    {
                        Console.WriteLine("Personen eller projektet hittades inte.");
                    }
                    else
                    {
                        dataAccess.RecordWorkedHours(personId, projectId, hoursWorked);
                        Console.WriteLine("Timmar loggade.");
                    }
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
