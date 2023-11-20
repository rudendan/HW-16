CREATE TABLE Homework
(
    id          SERIAL,
    name        VARCHAR(45) NOT NULL,
    description TEXT,
    PRIMARY KEY (id)
);


CREATE TABLE Lesson
(
    id          SERIAL,
    name        VARCHAR(45) NOT NULL,
    updated_at  TIMESTAMP,
    homework_id INT,
    PRIMARY KEY (id),
    FOREIGN KEY (homework_id) REFERENCES Homework (id)
);

CREATE TABLE Schedule
(
    id         SERIAL,
    name       VARCHAR(45) NOT NULL,
    updated_at TIMESTAMP,
    PRIMARY KEY (id)
);


CREATE TABLE Lesson_Schedule
(
    lesson_id   INT,
    schedule_id INT,
    FOREIGN KEY (lesson_id) REFERENCES Lesson (id),
    FOREIGN KEY (schedule_id) REFERENCES Schedule (id)
);



