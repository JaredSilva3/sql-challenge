-- Table for department information
CREATE TABLE public.departments (
    dept_no character varying(4) NOT NULL,
    dept_name character varying(40) NOT NULL
);
ALTER TABLE public.departments OWNER TO postgres;

-- Table for employee information
CREATE TABLE public.employees (
    emp_no integer NOT NULL,
    birth_date date NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    sex character(1) NOT NULL,
    hire_date date NOT NULL,
    emp_title_id character varying(10)
);
ALTER TABLE public.employees OWNER TO postgres;

-- Table for department-employee relationships
CREATE TABLE public.dept_emp (
    emp_no integer NOT NULL,
    dept_no character varying(4) NOT NULL
);
ALTER TABLE public.dept_emp OWNER TO postgres;

-- Table for department managers
CREATE TABLE public.dept_manager (
    emp_no integer NOT NULL,
    dept_no character varying(4) NOT NULL
);
ALTER TABLE public.dept_manager OWNER TO postgres;

-- Table for salary information
CREATE TABLE public.salaries (
    emp_no integer,
    salary integer NOT NULL
);
ALTER TABLE public.salaries OWNER TO postgres;

-- Table for job titles
CREATE TABLE public.titles (
    title_id character varying(6) NOT NULL,
    title character varying(100) NOT NULL
);
ALTER TABLE public.titles OWNER TO postgres;

-- Primary Keys
ALTER TABLE ONLY public.departments ADD CONSTRAINT departments_pkey PRIMARY KEY (dept_no);
ALTER TABLE ONLY public.employees ADD CONSTRAINT employees_pkey PRIMARY KEY (emp_no);
ALTER TABLE ONLY public.dept_emp ADD CONSTRAINT dept_emp_pkey PRIMARY KEY (emp_no, dept_no);
ALTER TABLE ONLY public.dept_manager ADD CONSTRAINT dept_manager_pkey PRIMARY KEY (emp_no, dept_no);
ALTER TABLE ONLY public.titles ADD CONSTRAINT titles_pkey PRIMARY KEY (title_id);

-- Foreign Key Constraints
ALTER TABLE ONLY public.dept_emp
    ADD CONSTRAINT dept_emp_dept_no_fkey FOREIGN KEY (dept_no) REFERENCES public.departments(dept_no);
ALTER TABLE ONLY public.dept_emp
    ADD CONSTRAINT dept_emp_emp_no_fkey FOREIGN KEY (emp_no) REFERENCES public.employees(emp_no);

ALTER TABLE ONLY public.dept_manager
    ADD CONSTRAINT dept_manager_dept_no_fkey FOREIGN KEY (dept_no) REFERENCES public.departments(dept_no);
ALTER TABLE ONLY public.dept_manager
    ADD CONSTRAINT dept_manager_emp_no_fkey FOREIGN KEY (emp_no) REFERENCES public.employees(emp_no);

ALTER TABLE ONLY public.salaries
    ADD CONSTRAINT salaries_emp_no_fkey FOREIGN KEY (emp_no) REFERENCES public.employees(emp_no);


