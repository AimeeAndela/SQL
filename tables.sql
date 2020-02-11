CREATE TABLE public.departments
(
    dept_no character varying(30) COLLATE pg_catalog."default",
    dept_name character varying(30) COLLATE pg_catalog."default",
    id integer NOT NULL DEFAULT nextval('departments_id_seq'::regclass),
    CONSTRAINT departments_pkey PRIMARY KEY (id),
    CONSTRAINT departments_id_fkey FOREIGN KEY (id)
        REFERENCES public.dept_manager (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

CREATE TABLE public.dept_emp
(
    emp_no character varying(30) COLLATE pg_catalog."default",
    dept_no character varying(30) COLLATE pg_catalog."default",
    from_date character varying(30) COLLATE pg_catalog."default",
    to_date character varying(30) COLLATE pg_catalog."default",
    id integer NOT NULL DEFAULT nextval('dept_emp_id_seq'::regclass),
    CONSTRAINT dept_emp_pkey PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

CREATE TABLE public.dept_manager
(
    dept_no character varying(30) COLLATE pg_catalog."default",
    emp_no character varying(30) COLLATE pg_catalog."default",
    from_date character varying(30) COLLATE pg_catalog."default",
    to_date character varying(30) COLLATE pg_catalog."default",
    id integer NOT NULL DEFAULT nextval('dept_manager_id_seq'::regclass),
    CONSTRAINT dept_manager_pkey PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

CREATE TABLE public.employees
(
    emp_no character varying(30) COLLATE pg_catalog."default",
    birth_date character varying(30) COLLATE pg_catalog."default",
    first_name character varying(30) COLLATE pg_catalog."default",
    last_name character varying(30) COLLATE pg_catalog."default",
    gender character varying(30) COLLATE pg_catalog."default",
    hire_date character varying(30) COLLATE pg_catalog."default",
    id integer NOT NULL DEFAULT nextval('employees_id_seq'::regclass),
    CONSTRAINT employees_pkey PRIMARY KEY (id),
    CONSTRAINT employees_id_fkey FOREIGN KEY (id)
        REFERENCES public.employees (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT employees_id_fkey1 FOREIGN KEY (id)
        REFERENCES public.dept_emp (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

CREATE TABLE public.salaries
(
    emp_no character varying(30) COLLATE pg_catalog."default",
    salary integer,
    from_date character varying(30) COLLATE pg_catalog."default",
    to_date character varying(30) COLLATE pg_catalog."default",
    id integer NOT NULL DEFAULT nextval('salaries_id_seq'::regclass),
    CONSTRAINT salaries_pkey PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

CREATE TABLE public.titles
(
    emp_no character varying(30) COLLATE pg_catalog."default",
    title character varying(30) COLLATE pg_catalog."default",
    from_date character varying(30) COLLATE pg_catalog."default",
    to_date character varying(30) COLLATE pg_catalog."default",
    id integer NOT NULL DEFAULT nextval('titles_id_seq'::regclass),
    CONSTRAINT titles_pkey PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

SELECT * FROM departments;
SELECT * FROM dept_emp;
SELECT * FROM dept_manager;
SELECT * FROM employees;
SELECT * FROM salaries;
SELECT * FROM titles;

ALTER TABLE departments 
ADD FOREIGN KEY (id) REFERENCES dept_manager(id);