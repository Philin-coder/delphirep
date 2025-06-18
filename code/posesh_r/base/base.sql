use posech_r
BEGIN TRANSACTION;
BEGIN TRY

    -- 1. Таблица "Speciality" (Специальность)
    CREATE TABLE dbo.Speciality (
        id_speciality INT PRIMARY KEY, -- Уникальный идентификатор специальности
        name NVARCHAR(255) NOT NULL, -- Название специальности
        faculty NVARCHAR(255) NOT NULL -- Факультет
    );

    -- 2. Таблица "Group" (Группа)
    CREATE TABLE dbo.[m_Group] (
        id_group INT PRIMARY KEY, -- Уникальный идентификатор группы
        group_name NVARCHAR(50) NOT NULL, -- Название группы
        id_speciality INT NOT NULL, -- Ссылка на специальность
        CONSTRAINT FK_Group_Speciality FOREIGN KEY (id_speciality) REFERENCES dbo.Speciality(id_speciality)
    );

    -- 3. Таблица "Student" (Студент)
    CREATE TABLE dbo.Student (
        id_student INT PRIMARY KEY, -- Уникальный идентификатор студента
        fio NVARCHAR(255) NOT NULL, -- ФИО студента
        email NVARCHAR(100) NOT NULL UNIQUE, -- Электронная почта (уникальная)
        enrollment_date DATE NOT NULL, -- Дата поступления
        m_status int NOT NULL, -- Статус студента (например, "обучается", "академический отпуск")
        id_group INT NOT NULL, -- Ссылка на группу
        CONSTRAINT FK_Student_Group FOREIGN KEY (id_group) REFERENCES dbo.[m_Group](id_group),
        CONSTRAINT CHK_Student_Email CHECK (email LIKE '%_@__%.__%') -- Проверка формата email
    );

    -- 4. Таблица "Teacher" (Преподаватель)
    CREATE TABLE dbo.Teacher (
        id_teacher INT PRIMARY KEY, -- Уникальный идентификатор преподавателя
        fio NVARCHAR(255) NOT NULL, -- ФИО преподавателя
        department NVARCHAR(255) NOT NULL -- Кафедра или направление работы
    );

    -- 5. Таблица "Subject" (Предмет)
    CREATE TABLE dbo.Subject (
        id_subject INT PRIMARY KEY, -- Уникальный идентификатор предмета
        name NVARCHAR(255) NOT NULL, -- Название предмета
        credits INT NOT NULL, -- Количество кредитов
        CONSTRAINT CHK_Subject_Credits CHECK (credits > 0) -- Ограничение: количество кредитов больше 0
    );

    -- 6. Таблица "Curriculum" (Предметная программа)
    CREATE TABLE dbo.Curriculum (
        id_curriculum INT PRIMARY KEY, -- Уникальный идентификатор учебного плана
        id_speciality INT NOT NULL, -- Ссылка на специальность
        id_subject INT NOT NULL, -- Ссылка на предмет
        CONSTRAINT FK_Curriculum_Speciality FOREIGN KEY (id_speciality) REFERENCES dbo.Speciality(id_speciality),
        CONSTRAINT FK_Curriculum_Subject FOREIGN KEY (id_subject) REFERENCES dbo.Subject(id_subject)
    );

    -- 7. Таблица "Lesson" (Занятие)
    CREATE TABLE dbo.Lesson (
        id_lesson INT PRIMARY KEY, -- Уникальный идентификатор занятия
        id_subject INT NOT NULL, -- Ссылка на предмет
        id_teacher INT NOT NULL, -- Ссылка на преподавателя
        [date] DATE NOT NULL, -- Дата проведения занятия
        time_start TIME NOT NULL, -- Время начала занятия
        time_end TIME NOT NULL, -- Время окончания занятия
        l_type int NOT NULL, -- Тип занятия (например, "лекция", "практика")
        CONSTRAINT FK_Lesson_Subject FOREIGN KEY (id_subject) REFERENCES dbo.Subject(id_subject),
        CONSTRAINT FK_Lesson_Teacher FOREIGN KEY (id_teacher) REFERENCES dbo.Teacher(id_teacher)
    );

    -- 8. Таблица "Attendance" (Посещаемость)
    CREATE TABLE dbo.Attendance (
        id_attendance INT PRIMARY KEY, -- Уникальный идентификатор записи о посещаемости
        id_lesson INT NOT NULL, -- Ссылка на занятие
        id_student INT NOT NULL, -- Ссылка на студента
        m_status int NOT NULL, -- Статус посещения (например, "присутствовал", "отсутствовал")
        note NVARCHAR(255), -- Комментарий (например, причина отсутствия)
        CONSTRAINT FK_Attendance_Lesson FOREIGN KEY (id_lesson) REFERENCES dbo.Lesson(id_lesson),
        CONSTRAINT FK_Attendance_Student FOREIGN KEY (id_student) REFERENCES dbo.Student(id_student)
    );

    -- 9. Таблица "Grade" (Оценка)
    CREATE TABLE dbo.Grade (
        id_grade INT PRIMARY KEY, -- Уникальный идентификатор оценки
        id_student INT NOT NULL, -- Ссылка на студента
        id_subject INT NOT NULL, -- Ссылка на предмет
        id_teacher INT NOT NULL, -- Ссылка на преподавателя
        grade_value INT NOT NULL, -- Значение оценки
        g_date DATE NOT NULL DEFAULT GETDATE(), -- Дата выставления оценки (по умолчанию текущая дата)
        CONSTRAINT FK_Grade_Student FOREIGN KEY (id_student) REFERENCES dbo.Student(id_student),
        CONSTRAINT FK_Grade_Subject FOREIGN KEY (id_subject) REFERENCES dbo.Subject(id_subject),
        CONSTRAINT FK_Grade_Teacher FOREIGN KEY (id_teacher) REFERENCES dbo.Teacher(id_teacher),
        CONSTRAINT CHK_Grade_Value CHECK (grade_value BETWEEN 2 AND 5) -- Ограничение: значение оценки от 2 до 5
    );

    -- Создание индексов для улучшения производительности
    CREATE INDEX IX_Grade_Student ON dbo.Grade (id_student);
    CREATE INDEX IX_Grade_Subject ON dbo.Grade (id_subject);
    CREATE INDEX IX_Grade_Teacher ON dbo.Grade (id_teacher);

    -- Фиксация транзакции
    COMMIT TRANSACTION;
    PRINT 'Таблицы успешно созданы.';
END TRY
BEGIN CATCH
    -- Откат транзакции в случае ошибки
    ROLLBACK TRANSACTION;
    PRINT 'Ошибка при создании таблиц: ' + ERROR_MESSAGE();
END CATCH;
