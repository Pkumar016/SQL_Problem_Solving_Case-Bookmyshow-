

-- // P2 - Write a query to list down all the shows on a given date at a given theatre along with their respective show timings.

SELECT M.Movie_Name, S.Show_Time
    FROM Shows S
    JOIN Movie M ON S.Movie_ID = M.Movie_ID
    WHERE S.Theatre_ID = 1
    AND S.Show_Date = '2024-03-31';