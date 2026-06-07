USE AdventureWorks;


CREATE TABLE Calendar_Lookup (
    DateKey INT PRIMARY KEY,
    FullDate DATE,
    DayNumber INT,
    DayName VARCHAR(20),
    WeekNumber INT,
    MonthNumber INT,
    MonthName VARCHAR(20),
    QuarterName VARCHAR(2),
    CalendarYear INT
);

DELIMITER $$

CREATE PROCEDURE PopulateCalendar(
    IN StartDate DATE,
    IN EndDate DATE
)
BEGIN
    DECLARE CurrentDate DATE;

    SET CurrentDate = StartDate;

    WHILE CurrentDate <= EndDate DO

        INSERT INTO Calendar_Lookup
        VALUES (
            DATE_FORMAT(CurrentDate,'%Y%m%d'),
            CurrentDate,
            DAY(CurrentDate),
            DAYNAME(CurrentDate),
            WEEK(CurrentDate,1),
            MONTH(CurrentDate),
            MONTHNAME(CurrentDate),
            CONCAT('Q',QUARTER(CurrentDate)),
            YEAR(CurrentDate)
        );

        SET CurrentDate = DATE_ADD(CurrentDate, INTERVAL 1 DAY);

    END WHILE;
END$$

DELIMITER ;


CALL PopulateCalendar('2020-01-01', '2020-06-30');