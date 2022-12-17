# Context

Company migrating users from on-premise to AWS cloud.

## Files

Description of the files for this challenge:

- EquipeTIABCEmpresa.xlsx - File with all the users in the on-premise
- usuarios2.csv - File that holds the converted xlsx file with the proper AWS Groups
- force_mfa_policy-201218-140143.txt -

## Groups

The company has the following groups on it's on-premise server:

- CloudAdmin
- LinuxAdmin
- DBA
- NetworkAdmin
- Intern

## Step to migrate

- Create automation script to create users (AWS CLI)
- Convert the user sheet following it's pattern (user,grup,password)
- Run the automation script
- Validate the user creation
