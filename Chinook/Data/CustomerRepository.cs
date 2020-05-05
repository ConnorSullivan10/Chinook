﻿using Chinook.Model;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;

namespace Chinook.Data
{
    public class CustomerRepository
    {
        const string ConnectionString = "Server =localhost;Database=Chinook;Trusted_Connection=True";

        public List<Customer> GetByCountry(string country)
        {
            var sql = @"
                        select 
                            FirstName,
                            LastName,
                            CustomerId,
                            Country
                        from Customer
                        where Customer.Country = @Country";

            using (var db = new SqlConnection(ConnectionString))
            {
                db.Open();

                var cmd = db.CreateCommand();
                cmd.CommandText = sql;
                cmd.Parameters.AddWithValue("Country", country);



                var reader = cmd.ExecuteReader();
                var customers = new List<Customer>();
                while (reader.Read())
                {
                    //mapping
                    var customer = new Customer
                    {
                        FirstName = (string)reader["FirstName"],
                        LastName = (string)reader["LastName"],
                        CustomerId = (int)reader["CustomerId"],
                        Country = (string)reader["Country"]
                    };
                    customers.Add(customer);
                }
                return customers;
            }
        }
    }
}
