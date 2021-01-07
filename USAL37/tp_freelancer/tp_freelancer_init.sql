drop database if exists tp_freelancer;

create database tp_freelancer default character set 'utf8mb4' COLLATE 'utf8mb4_unicode_ci';

use tp_freelancer;

create table customers
(
	customer_id int auto_increment,
    customer_name varchar(100) not null,
    customer_email varchar(255) unique not null,
    primary key (customer_id)
);
    
create table customer_cats
(
	cat_id int auto_increment,
    cat_name varchar(50) not null,
    cat_description text not null,
    primary key (cat_id)
);

create table jobs
(
	job_id int auto_increment,
    job_state char(10) not null,
    job_title varchar(100) not null,
    job_start datetime not null,
    job_end datetime not null,
    job_description text not null,
    primary key (job_id)
);

create table quotes
(
	quote_id int auto_increment,
    quote_state char(10) not null,
    quote_date date not null,
    quote_amount int not null,
    quote_final_date date not null,
    quote_final_amount int not null,
    primary key (quote_id)
);

alter table customers
	add
    constraint fk_customers_cats foreign key (cat_id) references customers_cats(cat_id);
    
alter table jobs
	add
    constraint fk_jobs_customers foreign key (customer_id) references customers(customer_id);
    
alter table quotes
	add
    constraint fk_quotes_jobs foreign key (job_id) references jobs(job_id);
