USE timetabulator;

INSERT INTO teachers (name, email) VALUES
('Prof. A', 'a@example.com'),
('Prof. B', 'b@example.com');

INSERT INTO subjects (name, type, credits, teacher_id) VALUES
('DBMS', 'theory', 4, 1),
('OS', 'theory', 3, 2);

INSERT INTO divisions (year, division_code) VALUES
('SE', 'SE-A'),
('SE', 'SE-B');

INSERT INTO batches (name, division_id) VALUES
('A1', 1),
('A2', 1);

INSERT INTO rooms (name, type) VALUES
('C101', 'class'),
('Lab1', 'lab');

INSERT INTO time_config (start_time, end_time, period_duration, lunch_break_start, lunch_break_end)
VALUES ('09:00:00', '17:00:00', 60, '13:00:00', '14:00:00');
