SELECT * FROM Homework;

SELECT * FROM Lesson l
JOIN Homework h ON l.homework_id = h.id;

SELECT * FROM Lesson l
JOIN Homework h ON l.homework_id = h.id
ORDER BY l.updated_at;

SELECT * FROM Schedule s
JOIN Lesson_Schedule ls ON s.id = ls.schedule_id
JOIN Lesson l ON l.id = ls.lesson_id;

SELECT s.name, COUNT(ls.lesson_id) AS lesson_count
FROM Schedule s
LEFT JOIN Lesson_Schedule ls ON s.id = ls.schedule_id
GROUP BY s.name;