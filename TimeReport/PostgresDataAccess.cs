using System;
using System.Collections.Generic;
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

    public void InsertProject(string projectName, int projectId)
    {
        using (IDbConnection dbConnection = new NpgsqlConnection(_connectionString))
        {
            dbConnection.Open();
            dbConnection.Execute("INSERT INTO mjl_project (id, project_name) VALUES (@ProjectId, @ProjectName)", new { ProjectId = projectId, ProjectName = projectName });
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

    //methods added to be able to retrieve project ID and Person ID by name. 
    public int GetPersonIdByName(string personName)
    {
        using (IDbConnection dbConnection = new NpgsqlConnection(_connectionString))
        {
            dbConnection.Open();
            return dbConnection.QueryFirstOrDefault<int>("SELECT id FROM mjl_person WHERE person_name = @PersonName", new { PersonName = personName });
        }
    }

    public int GetProjectIdByName(string projectName)
    {
        using (IDbConnection dbConnection = new NpgsqlConnection(_connectionString))
        {
            dbConnection.Open();
            return dbConnection.QueryFirstOrDefault<int>("SELECT id FROM mjl_project WHERE project_name = @ProjectName", new { ProjectName = projectName });
        }
    }
}
