-- Question 1(a)
SELECT Forename, Surname, test1 + test2 + test3 AS totalMark
FROM Question1;

-- Question 1(b)
SELECT Forename, test1, test2, test3, (test1 + test2 + test3) / 3.0 AS averageMark
FROM Question1
ORDER BY averageMark DESC;


-- Question 2(a)
SELECT Forename, Surname, hourlyRate * hoursWorked AS totalWage
FROM Question2;


-- Question 2(b)
SELECT Forename, Surname, hourlyRate * hoursWorked AS totalWage
FROM Question2
WHERE hourlyRate * hoursWorked > 200;


-- Question 3(a)
SELECT
    ROUND(test1 / 16.0 * 100) AS test1Percentage,
    ROUND(test2 / 16.0 * 100) AS test2Percentage,
    ROUND(test3 / 16.0 * 100) AS test3Percentage,
    ROUND(test4 / 16.0 * 100) AS test4Percentage,
    ROUND(test5 / 16.0 * 100) AS test5Percentage
FROM Question3;


-- Question 3(b)
SELECT
    Forename,
    Surname,
    ROUND((test1 + test2 + test3 + test4 + test5) / 80.0 * 100) AS totalPercentage
FROM Question3
ORDER BY totalPercentage ASC, Surname ASC;


-- Question 4(a)
SELECT
    productName,
    buyingPrice,
    sellingPrice,
    sellingPrice - buyingPrice AS profitOrLoss
FROM Question4;


-- Question 4(b)
SELECT
    productName,
    buyingPrice - sellingPrice AS lossAmount
FROM Question4
WHERE sellingPrice < buyingPrice
ORDER BY lossAmount ASC;


-- Question 5(a)
SELECT
    productName,
    priceUK,
    ROUND(priceUK * 1.13, 2) AS priceEuros
FROM Question5;


-- Question 5(b)
SELECT
    productID,
    priceUK,
    ROUND(priceUK * 1.39, 2) AS priceUSD
FROM Question5
WHERE ROUND(priceUK * 1.39, 2) > 40
ORDER BY priceUSD ASC, productID ASC;


-- Question 6(a)
SELECT
    fishType,
    pricePerKilo,
    numberOfKilos,
    ROUND(pricePerKilo * numberOfKilos, 2) AS totalCost
FROM Question6;


-- Question 6(b)
SELECT
    fishType,
    ROUND(pricePerKilo * numberOfKilos, 2) AS totalCost
FROM Question6
WHERE ROUND(pricePerKilo * numberOfKilos, 2) BETWEEN 20 AND 50
ORDER BY totalCost DESC;

