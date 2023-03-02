CREATE TABLE Registration (
    AcNo INT PRIMARY KEY,
    FName VARCHAR(15) NOT NULL,
    LName VARCHAR(15) NOT NULL,
    DOB DATE,
    RegDate DATE DEFAULT GETDATE(),
    CivilID INT NOT NULL,
    Gender CHAR(1) CHECK (Gender IN ('M','m','F','f')),
    GSM VARCHAR(8) UNIQUE CHECK (GSM LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
    OpenBal INT CHECK (OpenBal >= 50)
);


CREATE TABLE Deposits (
    DNo INT PRIMARY KEY,
    AcNo int FOREIGN KEY REFERENCES Registration(AcNo),
    DDate DATE DEFAULT GETDATE(),
    DAmount INT NOT NULL,
    DLocation VARCHAR(10) NOT NULL
);




CREATE TABLE Withdrawals (
    WNo int PRIMARY KEY,
    AcNo int FOREIGN KEY REFERENCES Registration(AcNo),
    WDate DATE DEFAULT GETDATE(),
    WAmount int NOT NULL,
    WLocation VARCHAR(10) NOT NULL
);


---1 Procedure Reg_Add_Record (All colums)
CREATE PROCEDURE Reg_Add_Record
    @AcNo INT,
    @FName VARCHAR(15),
    @LName VARCHAR(15),
    @DOB DATE,
    @RegDate DATE,
    @CivilID INT,
    @Gender CHAR(1),
    @GSM VARCHAR(8),
    @OpenBal INT
AS
BEGIN


    INSERT INTO Registration (AcNo, FName, LName, DOB, RegDate, CivilID, Gender, GSM, OpenBal)
    VALUES (@AcNo, @FName, @LName, @DOB, @RegDate, @CivilID, @Gender, @GSM, @OpenBal);

    IF @@ROWCOUNT > 0
    BEGIN
        PRINT 'Record saved successfully'
    END
    ELSE
    BEGIN
        PRINT 'Record not saved successfully'
    END

END;

EXEC Reg_Add_Record 1, 'John', 'Doe', '1990-01-01','1990-01-11', 1234567890, 'M', '98656584', 90;
EXEC Reg_Add_Record 2, 'ali', 'nasir', '1990-01-01','1990-01-11', 123567890, 'M', '95656584', 80;
EXEC Reg_Add_Record 3, 'mubarik', 'mrhoon', '1990-01-01','1990-01-11', 123567890, 'M', '95686524', 70;
EXEC Reg_Add_Record 4, 'ahmed', 'saeed', '1990-01-01','1990-01-11', 1234567890, 'M', '93656584', 90;
EXEC Reg_Add_Record 5, 'droeesh', 'msaud', '1990-01-01','1990-01-11', 123567890, 'M', '95689584', 80;
EXEC Reg_Add_Record 6, 'samitah', 'jmal', '1990-01-01','1990-01-11', 123567890, 'M', '95647584', 70;

 
  
  


---2 Procedure Reg_Update_OpenGSM (AcNo,newGSM) 
CREATE PROCEDURE Reg_Update_OpenGSM 
    @AcNo INT,
    @newGSM VARCHAR(8)
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE Registration
    SET GSM = @newGSM
    WHERE AcNo = @AcNo AND OpenBal > 0;
END

EXEC Reg_Update_OpenGSM 1, '71898954';
select * from Registration


---3 Procedure Reg_Del_Record (AcNo) 
CREATE PROCEDURE Reg_Del_Record
    @AcNo int
AS
BEGIN
    SET NOCOUNT ON;
    DELETE FROM Registration WHERE AcNo = @AcNo;
END;

EXEC Reg_Del_Record 3;

select * from Registration


---4 Procedure Deposit_Amt (All columns) 
CREATE PROCEDURE Deposit_Amt
    @DNo int,
    @AcNo int,
    @DAmount int,
    @DLocation varchar(10)
AS
BEGIN
DECLARE @DDate DATE = CONVERT(DATE, GETDATE());

    SET NOCOUNT ON;
    INSERT INTO Deposits (DNo, AcNo, DDate, DAmount, DLocation)
    VALUES (@DNo, @AcNo, @DDate, @DAmount, @DLocation);
END;

EXEC Deposit_Amt @DNo = 1001, @AcNo = 1, @DAmount = 500, @DLocation = 'Branch A'

select * from Deposits


---5 Procedure Withdraw_Amt (All columns)

CREATE PROCEDURE Withdraw_Amt
    @WNo int,
    @AcNo int,
    @WAmount int,
    @WLocation varchar(10)
AS
BEGIN
DECLARE @WDate DATE = CONVERT(DATE, GETDATE());
    SET NOCOUNT ON;
    INSERT INTO Withdrawals (WNo, AcNo, WDate, WAmount, WLocation)
    VALUES (@WNo, @AcNo, @WDate, @WAmount, @WLocation);
END;

EXEC Withdraw_Amt @WNo = 2001, @AcNo = 2, @WAmount = 100, @WLocation = 'ATM 1'

select * from Withdrawals
