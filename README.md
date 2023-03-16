# OVERVIEW 
The purpose of this analysis is get the number of retiring employees, the most recent titles filled and also the number of titles filled by employees who are retiring as seen in deliverable 1. The analysis also focuses on helping Pewlett Hackard generate a list of all employees eligible for the retirement package as seen in deliverable 2.

Image showing the entity relationship diagram of the emplyees: ![Screenshot 2023-03-16 at 1 21 55 AM](https://user-images.githubusercontent.com/109382758/225522776-86c0e5df-9493-4794-be28-2eb1b912210f.png)


# RESULTS
- Helps to know the names and numbers of those likely to retire soon.
- Provides numbers and names of titled positions to be filled in future.
- Helps to generate the list of employees eligible for retirement packages.
- Lastly, helps to generate the list of employees who are eligible to be part of the mentorship program after their retirement.


# SUMMARY
- The roles that will need to be filled as the silver tsunami begins, can be known by providing the total count of all retiring employee names that will retire. This can be done using the following query:

      SELECT COUNT(first_name) AS name_count
      FROM retirement_info;
    
The above helps to give a total number of employees to be retiring soon, which will in turn give a total count of (41380), representing the total number of vacant roles that would need to be filled before the silver tsunami.

- To know if there are enough retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees can be told from the mentorship eligibilty table using the following query:

      SELECT COUNT(first_name) AS name_count
      FROM mentorship_eligibilty;
      
The above helps to give a total number of employees that are eligible for mentorship, which will in turn give a total count of (1549), representing the total number of retirement-ready employees that can possibly mentor the next generation of Pewlett Hackard employees. However, Judging from the total number of employees ready to reitre soon, the total number of eligible employees seems quite small for Pewlett Hackard.
