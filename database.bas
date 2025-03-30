REM Simple password-protected database in BASIC
DIM NAME$(100), EMAIL$(100)
LET PASSWORD$ = "secret"
LET COUNT = 0

PRINT "Welcome to Your Email Database"
INPUT "Enter password: "; USERPASSWORD$
IF USERPASSWORD$ <> PASSWORD$ THEN GOTO ACCESS_DENIED

PRINT "Access granted!"
PRINT "1. Add record"
PRINT "2. View records"
PRINT "3. Exit"
INPUT "Choose an option (1-3): "; CHOICE

IF CHOICE = 1 THEN GOTO ADD_RECORD
IF CHOICE = 2 THEN GOTO VIEW_RECORDS
IF CHOICE = 3 THEN GOTO EXIT_PROGRAM

ACCESS_DENIED:
PRINT "Incorrect password. Access denied."
END

ADD_RECORD:
INPUT "Enter name: "; NAME$(COUNT)
INPUT "Enter email address: "; EMAIL$(COUNT)
LET COUNT = COUNT + 1
PRINT "Record added!"
GOTO MAIN_MENU

VIEW_RECORDS:
IF COUNT = 0 THEN PRINT "No records found.": GOTO MAIN_MENU
FOR I = 0 TO COUNT - 1
    PRINT "Name: "; NAME$(I); ", Email: "; EMAIL$(I)
NEXT I
GOTO MAIN_MENU

EXIT_PROGRAM:
PRINT "Goodbye!"
END
