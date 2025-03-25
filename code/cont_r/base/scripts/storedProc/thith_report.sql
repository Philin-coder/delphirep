USE [cont_r]
GO

/****** Object:  StoredProcedure [dbo].[thith_report]    Script Date: 25.03.2025 20:20:26 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

 create proc [dbo].[thith_report]
	/*Сводный отчет о движении контингента по специальностям  за период  */
	@d1 DATE, -- Начальная дата периода
  @d2 DATE  -- Конечная дата периода
  AS
BEGIN
  SELECT 
    spec.spec_maim AS speciality_name, -- Название специальности
    COUNT(stud.stud_id) AS student_count -- Количество студентов
  FROM stud
  INNER JOIN gruppa ON gruppa.grup_id = stud.grup_id
  INNER JOIN spec ON spec.spec_id = gruppa.spec_id
  WHERE 1=1
    AND stud.data_ot IS NULL -- Ученики не отчислены
    AND stud.is_akadem = 0   -- Ученики не в академическом отпуске
    AND stud.data_pr BETWEEN @d1 AND @d2 -- Фильтр по дате приема
  GROUP BY spec.spec_maim -- Группировка по специальностям
  ORDER BY student_count DESC; -- Сортировка по количеству студентов (по убыванию)
END;
GO

