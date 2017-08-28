# DSRRA
Data Stream Regression Results Analysis.

## Application
This application help analysis and comparison of the results generated by the MOA (Massive Online Analysis). 
It was developed with Oracle Apex. Only the regression task is handled by into the tool.
This application support the algorithms below:
- **FIMT-DD** (Fast Incremental Model Trees with Drift Detections);
- **AMRules** (Adaptive Model Rules);
- **SFNRegressor** (Scale-free Network Regressor);
--> _with FIMT-DD or AMRules option_.
- **IBLStreams** (Instance Based Learner on Streams).

The first three referring to the 2016.04 version, the last referring to the 2011.10 version of the MOA.

## Install

#### 1) Oracle Database
**a)** install the Oracle Database 11g (or higher), we recommend [Oracle 11g XE][1];

**b)** upgrade (or install) [Oracle Application Express 5.0][2] (or higher);

**c)** create new schema/owner and grants according execute the commands below:

```sql
-- Creating user DSRRA, optionally you have the option of adding default tablespace...
create user DSRRA identified by hard_password;

-- Privileges...
Grant connect, resource to DSRRA;
Grant execute on sys.UTL_FILE to DSRRA;
```

#### 2) Dumpfile - import
The file `.\database\dsrra_data.dmp` contains the Oracle Export File (from DataPump). The first step is move dumpfile to a directory path and execute the import with `impdp` tools. For information, the original tablespace is called `DSRRADAT`.

> **Note:** To import to different tablespace, you need to add **remap_tablespace** on the command line.

This file contains the metadata and initial data, including data from the author's master dissertation work.

#### 3) Application Express - import
First step is to create the new workspace in Oracle Application Express (APEX) with admin account, where this workspace it should be related to schema created for the DSRRA. After file `.\src\application-dsrra.sql` contains the Oracle Application Express export (from Apex Builder).

## Running the application

The authentiction is based Application Express Accounts. For insert results into application is required create the directory in Oracle Database, called `MOA_RESULT`, to references the local where are generates the logfiles (from MOA). 

> **Note:**
> - To modify the directory reference is necessary to change initializarion of `PCK_EXECUTION` package.
> - The DSRRA user must have read permission in the oracle directory (MOA_RESULT).

Home page of the application:
![Home Page Screenshots](./doc/screenshots/DSRRA-Home.png?raw=true "Home Page")

Comparative chart of algorithms:
![Comparative Chart](./doc/screenshots/DSRRA-ResultsCompare.png?raw=true "Comparative chart")


## License
This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation.

[1]: http://www.oracle.com/technetwork/database/database-technologies/express-edition/downloads/index.html
[2]: http://www.oracle.com/technetwork/developer-tools/apex/downloads/download-085147.html
