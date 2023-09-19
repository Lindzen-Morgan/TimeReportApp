using System;
using System.Data;
using Npgsql;
using Dapper;

public class PostgresDataAccess
{
    private readonly string _connectionString;

    public PostgresDataAccess(string connectionString)
    {
        _connectionString = connectionString;
    }

    public void InsertPerson(string personName)
    {
        using (IDbConnection dbConnection = new NpgsqlConnection(_connectionString))
        {
            dbConnection.Open();
            dbConnection.Execute("INSERT INTO mjl_person (person_name) VALUES (@PersonName)", new { PersonName = personName });
        }
    }

    public void InsertProject(string projectName)
    {
        using (IDbConnection dbConnection = new NpgsqlConnection(_connectionString))
        {
            dbConnection.Open();
            dbConnection.Execute("INSERT INTO mjl_project (project_name) VALUES (@ProjectName)", new { ProjectName = projectName });
        }
    }

    public void RecordWorkedHours(int personId, int projectId, int hoursWorked)
    {
        using (IDbConnection dbConnection = new NpgsqlConnection(_connectionString))
        {
            dbConnection.Open();
            dbConnection.Execute("INSERT INTO mjl_project_person (project_id, person_id, hours) VALUES (@ProjectId, @PersonId, @HoursWorked)",
                new { ProjectId = projectId, PersonId = personId, HoursWorked = hoursWorked });
        }
    }
}
