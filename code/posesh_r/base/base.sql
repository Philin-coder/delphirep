use posech_r
BEGIN TRANSACTION;
BEGIN TRY

    -- 1. ������� "Speciality" (�������������)
    CREATE TABLE dbo.Speciality (
        id_speciality INT PRIMARY KEY, -- ���������� ������������� �������������
        name NVARCHAR(255) NOT NULL, -- �������� �������������
        faculty NVARCHAR(255) NOT NULL -- ���������
    );

    -- 2. ������� "Group" (������)
    CREATE TABLE dbo.[m_Group] (
        id_group INT PRIMARY KEY, -- ���������� ������������� ������
        group_name NVARCHAR(50) NOT NULL, -- �������� ������
        id_speciality INT NOT NULL, -- ������ �� �������������
        CONSTRAINT FK_Group_Speciality FOREIGN KEY (id_speciality) REFERENCES dbo.Speciality(id_speciality)
    );

    -- 3. ������� "Student" (�������)
    CREATE TABLE dbo.Student (
        id_student INT PRIMARY KEY, -- ���������� ������������� ��������
        fio NVARCHAR(255) NOT NULL, -- ��� ��������
        email NVARCHAR(100) NOT NULL UNIQUE, -- ����������� ����� (����������)
        enrollment_date DATE NOT NULL, -- ���� �����������
        m_status int NOT NULL, -- ������ �������� (��������, "���������", "������������� ������")
        id_group INT NOT NULL, -- ������ �� ������
        CONSTRAINT FK_Student_Group FOREIGN KEY (id_group) REFERENCES dbo.[m_Group](id_group),
        CONSTRAINT CHK_Student_Email CHECK (email LIKE '%_@__%.__%') -- �������� ������� email
    );

    -- 4. ������� "Teacher" (�������������)
    CREATE TABLE dbo.Teacher (
        id_teacher INT PRIMARY KEY, -- ���������� ������������� �������������
        fio NVARCHAR(255) NOT NULL, -- ��� �������������
        department NVARCHAR(255) NOT NULL -- ������� ��� ����������� ������
    );

    -- 5. ������� "Subject" (�������)
    CREATE TABLE dbo.Subject (
        id_subject INT PRIMARY KEY, -- ���������� ������������� ��������
        name NVARCHAR(255) NOT NULL, -- �������� ��������
        credits INT NOT NULL, -- ���������� ��������
        CONSTRAINT CHK_Subject_Credits CHECK (credits > 0) -- �����������: ���������� �������� ������ 0
    );

    -- 6. ������� "Curriculum" (���������� ���������)
    CREATE TABLE dbo.Curriculum (
        id_curriculum INT PRIMARY KEY, -- ���������� ������������� �������� �����
        id_speciality INT NOT NULL, -- ������ �� �������������
        id_subject INT NOT NULL, -- ������ �� �������
        CONSTRAINT FK_Curriculum_Speciality FOREIGN KEY (id_speciality) REFERENCES dbo.Speciality(id_speciality),
        CONSTRAINT FK_Curriculum_Subject FOREIGN KEY (id_subject) REFERENCES dbo.Subject(id_subject)
    );

    -- 7. ������� "Lesson" (�������)
    CREATE TABLE dbo.Lesson (
        id_lesson INT PRIMARY KEY, -- ���������� ������������� �������
        id_subject INT NOT NULL, -- ������ �� �������
        id_teacher INT NOT NULL, -- ������ �� �������������
        [date] DATE NOT NULL, -- ���� ���������� �������
        time_start TIME NOT NULL, -- ����� ������ �������
        time_end TIME NOT NULL, -- ����� ��������� �������
        l_type int NOT NULL, -- ��� ������� (��������, "������", "��������")
        CONSTRAINT FK_Lesson_Subject FOREIGN KEY (id_subject) REFERENCES dbo.Subject(id_subject),
        CONSTRAINT FK_Lesson_Teacher FOREIGN KEY (id_teacher) REFERENCES dbo.Teacher(id_teacher)
    );

    -- 8. ������� "Attendance" (������������)
    CREATE TABLE dbo.Attendance (
        id_attendance INT PRIMARY KEY, -- ���������� ������������� ������ � ������������
        id_lesson INT NOT NULL, -- ������ �� �������
        id_student INT NOT NULL, -- ������ �� ��������
        m_status int NOT NULL, -- ������ ��������� (��������, "�������������", "������������")
        note NVARCHAR(255), -- ����������� (��������, ������� ����������)
        CONSTRAINT FK_Attendance_Lesson FOREIGN KEY (id_lesson) REFERENCES dbo.Lesson(id_lesson),
        CONSTRAINT FK_Attendance_Student FOREIGN KEY (id_student) REFERENCES dbo.Student(id_student)
    );

    -- 9. ������� "Grade" (������)
    CREATE TABLE dbo.Grade (
        id_grade INT PRIMARY KEY, -- ���������� ������������� ������
        id_student INT NOT NULL, -- ������ �� ��������
        id_subject INT NOT NULL, -- ������ �� �������
        id_teacher INT NOT NULL, -- ������ �� �������������
        grade_value INT NOT NULL, -- �������� ������
        g_date DATE NOT NULL DEFAULT GETDATE(), -- ���� ����������� ������ (�� ��������� ������� ����)
        CONSTRAINT FK_Grade_Student FOREIGN KEY (id_student) REFERENCES dbo.Student(id_student),
        CONSTRAINT FK_Grade_Subject FOREIGN KEY (id_subject) REFERENCES dbo.Subject(id_subject),
        CONSTRAINT FK_Grade_Teacher FOREIGN KEY (id_teacher) REFERENCES dbo.Teacher(id_teacher),
        CONSTRAINT CHK_Grade_Value CHECK (grade_value BETWEEN 2 AND 5) -- �����������: �������� ������ �� 2 �� 5
    );

    -- �������� �������� ��� ��������� ������������������
    CREATE INDEX IX_Grade_Student ON dbo.Grade (id_student);
    CREATE INDEX IX_Grade_Subject ON dbo.Grade (id_subject);
    CREATE INDEX IX_Grade_Teacher ON dbo.Grade (id_teacher);

    -- �������� ����������
    COMMIT TRANSACTION;
    PRINT '������� ������� �������.';
END TRY
BEGIN CATCH
    -- ����� ���������� � ������ ������
    ROLLBACK TRANSACTION;
    PRINT '������ ��� �������� ������: ' + ERROR_MESSAGE();
END CATCH;
