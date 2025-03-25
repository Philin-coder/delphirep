USE [cont_r]
GO

/****** Object:  StoredProcedure [dbo].[last_report]    Script Date: 25.03.2025 22:29:01 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[last_report]
  /* Сводный отчет по выбывшим студентам за период */
  @d1 DATE, -- Начальная дата периода
  @d2 DATE  -- Конечная дата периода
AS
BEGIN
  SELECT 
    spec.spec_maim AS speciality_name, -- Название специальности
    COUNT(stud.stud_id) AS dismissed_count -- Количество выбывших студентов
  FROM stud
  INNER JOIN gruppa ON gruppa.grup_id = stud.grup_id
  INNER JOIN spec ON spec.spec_id = gruppa.spec_id
  WHERE 1=1
    AND stud.data_ot IS NOT NULL -- Учитываются только выбывшие студенты
    AND stud.data_ot BETWEEN @d1 AND @d2 -- Фильтр по дате отчисления
  GROUP BY spec.spec_maim -- Группировка по специальностям
  ORDER BY dismissed_count DESC; -- Сортировка по количеству выбывших студентов (по убыванию)
END;
GO

