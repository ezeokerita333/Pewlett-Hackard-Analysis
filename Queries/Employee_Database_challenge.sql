-- create retirement title table
SELECT  e.emp_no, 
		e.first_name, 
		e.last_name,
 		ts.title, 
		ts.from_date, 
		ts.to_date
INTO retirement_titles
FROM titles AS ts
LEFT JOIN employees AS e 
ON ts.emp_no = e.emp_no
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) 
                    emp_no,
                    first_name,
                    last_name,
                    title
INTO unique_titles
FROM retirement_titles
WHERE to_date = ('9999-01-01')
ORDER BY emp_no, last_name DESC;
 
-- create retiring title table
SELECT COUNT(title) AS title_count, title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY title_count DESC;


-- create mentorship_eligibilty table
SELECT  DISTINCT ON (e.emp_no) 
        e.emp_no, 
        e.first_name, 
        e.last_name, 
        e.birth_date,
        de.from_date,
        de.to_date,
		ts.title
INTO mentorship_eligibilty
FROM employees AS e
INNER JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
INNER JOIN titles AS ts
ON (e.emp_no = ts.emp_no)
WHERE (de.to_date = '9999-01-01') 
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;



        