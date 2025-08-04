CREATE DATABASE IF NOT EXISTS timetabulator;
USE timetabulator;

CREATE TABLE teachers (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100),
  email VARCHAR(100)
);

CREATE TABLE subjects (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100),
  type ENUM('theory', 'lab'),
  credits INT,
  teacher_id INT,
  FOREIGN KEY (teacher_id) REFERENCES teachers(id)
);

CREATE TABLE divisions (
  id INT AUTO_INCREMENT PRIMARY KEY,
  year ENUM('FE', 'SE', 'TE', 'BE'),
  division_code VARCHAR(10)
);

CREATE TABLE batches (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(10),
  division_id INT,
  FOREIGN KEY (division_id) REFERENCES divisions(id)
);

CREATE TABLE rooms (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(20),
  type ENUM('class', 'lab')
);

CREATE TABLE time_config (
  id INT AUTO_INCREMENT PRIMARY KEY,
  start_time TIME,
  end_time TIME,
  period_duration INT,
  lunch_break_start TIME,
  lunch_break_end TIME
);

CREATE TABLE timetable (
  id INT AUTO_INCREMENT PRIMARY KEY,
  division_id INT,
  teacher_id INT,
  subject_id INT,
  room_id INT,
  day ENUM('Mon', 'Tue', 'Wed', 'Thu', 'Fri'),
  period INT,
  FOREIGN KEY (division_id) REFERENCES divisions(id),
  FOREIGN KEY (teacher_id) REFERENCES teachers(id),
  FOREIGN KEY (subject_id) REFERENCES subjects(id),
  FOREIGN KEY (room_id) REFERENCES rooms(id)
);
