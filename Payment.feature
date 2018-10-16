
########################showBalance########################
Scenario 1: Customer is able to fetch wallet balance using valid mobile number
  Given the customer passes a valid mobile number as "9876543210" which is registered on the wallet server
  When the customer request to show balance
  Then customer is replied with a success response showing current wallet balance as "5000"
   
Scenario 2: Customer is not able to fetch wallet balance using invalid mobile number i.e. not 10-digit
  Given the customer passes a invalid mobile number as "9876543" which is not a 10-digit number
  When the customer request to show balance 
  Then customer is shown an error response Invalid Number
  
Scenario 3: Customer is not able to fetch wallet balance when not passing any mobile number i.e. null
  Given the customer passes a blank mobile number as "" or "null"
  When the customer request to show balance  
  Then customer is shown an error response Invalid Number
  
Scenario 4: Customer is not able to fetch wallet balance when passing a 10 digit mobile number which is not registered on the wallet server
  Given the customer passes a non-registered 10-digit mobile number as "4548687655"
  When the customer request to show balance  
  Then customer is shown an error response Account doesn't exist
  

  
  
########################findByMobile########################  
Scenario 1: Customer is able to fetch customer details using valid mobile number
  Given the customer passes a valid mobile number as "9876543210" which is registered on the wallet server
  When the customer request to find customer details using mobile number
  Then the customer is replied with a success response with "name" as "Tushar"
  And "mobile" as "9876543210"
  And "balance" as "5000"
  
Scenario 2: Customer is not able to fetch customer details using invalid mobile number i.e. not 10-digit
  Given the customer passes a invalid mobile number as "9876543" which is not a 10-digit number
  When the customer request to find customer details using mobile number
  Then customer is shown an error response Invalid Mobile Number
  
Scenario 3: Customer is not able to fetch wallet balance when not passing any mobile number i.e. null
  Given the customer passes a blank mobile number as "" or "null"
  When the customer request to find customer details using mobile number
  Then customer is shown an error response Invalid Mobile Number
  
Scenario 4: Customer is not able to fetch wallet balance when passing a 10 digit mobile number which is not registered on the wallet server
  Given the customer passes a non-registered 10-digit mobile number as "4548687655"
  When the customer request to find customer details using mobile number
  Then customer is shown an error response Account doesn't exist 
  
  
  
  
########################AddCustomer########################
Scenario 1: Customer is able to create account when valid details are passed
  Given the customer passes valid details
  And "name" as "Tushar"
  And valid 10-digit "mobile" as "7874588766"
  And "amount" as "5000"
  When the customer request to create account
  Then the customer account is created and is replied with a success response with "name" as "Tushar"
  And "mobile" as "7874588766"
  And "balance" as "5000"
  
Scenario 2: Customer is not able to create account when name is null or empty
  Given the customer passes invalid details
  And "name" as ""
  And valid 10-digit "mobile" as "7874588766"
  And "amount" as "5000"
  When the customer request to create account
  Then the customer is replied with a error response Fields can't be empty or null
  
Scenario 3: Customer is not able to create account when mobile is null or empty
  Given the customer passes invalid details
  And "name" as "Tushar"
  And valid 10-digit "mobile" as ""
  And "amount" as "5000"
  When the customer request to create account
  Then the customer is replied with a error response Fields can't be empty or null
  
Scenario 4: Customer is not able to create account when balance is null or empty
  Given the customer passes invalid details
  And "name" as "Tushar"
  And valid 10-digit "mobile" as "7874588766"
  And "amount" as ""
  When the customer request to create account
  Then the customer is replied with a error response Fields can't be empty or null
  
Scenario 5: Customer is not able to create account when mobile number is already registered
  Given the customer passes valid details but the mobile already exists in the server
  And "name" as "Tushar"
  And existing 10-digit "mobile" as "7874588766"
  And "amount" as "1000"
  When the customer request to create account
  Then the customer is replied with a error response Account already exist
  


########################SaveCustomer########################
Scenario 1: Customer is able to save details when valid details are passed
  Given the customer passes valid customer object
  And "name" as "Tushar"
  And valid 10-digit "mobile" as "7874588766"
  And "amount" as "5000"
  When the customer request to save details
  Then the customer is saved and replied with a success response with "name" as "Tushar"
  And "mobile" as "7874588766"
  And "balance" as "5000"
  
Scenario 2: Customer is not able to save details when name is null or empty
  Given the customer passes invalid customer object
  And "name" as ""
  And valid 10-digit "mobile" as "7874588766"
  And "amount" as "5000"
  When the customer request to save details
  Then the customer is replied with a error response Fields can't be empty or null
  
Scenario 3: Customer is not able to save details when mobile is null or empty
  Given the customer passes invalid customer object
  And "name" as "Tushar"
  And valid 10-digit "mobile" as ""
  And "amount" as "5000"
  When the customer request to save details
  Then the customer is replied with a error response Fields can't be empty or null
  
Scenario 4: Customer is not able to save details when balance is null or empty
  Given the customer passes invalid customer object
  And "name" as "Tushar"
  And valid 10-digit "mobile" as "7874588766"
  And "amount" as ""
  When the customer request to save details
  Then the customer is replied with a error response Fields can't be empty or null
  
Scenario 5: Customer is not able to save details when mobile number is already registered
  Given the customer passes valid details but the mobile already exists in the server
  And "name" as "Tushar"
  And existing 10-digit "mobile" as "7874588766"
  And "amount" as "1000"
  When the customer request to save details
  Then the customer is replied with a error response Account already exist
