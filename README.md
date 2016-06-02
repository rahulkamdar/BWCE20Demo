# BANQ.IO Account Service

![alt tag](/BanqIOAccountService.png)

## Process Description

Banq.io is a modern-day digital bank that has it's core banking functionality built using the best of computing and application technologies in the marketplace. The bank's marketing team is storing campaign data in Marketo, some customer data in Salesforce and the main account data is stored on Mainframe based systems. The CMO of Diamond Bank wants to provide Mobile Banking to every customer where customers can update their personal information and possibly subscribe to newsletters. The CTO of Diamond Bank has a hard time keeping up with all technology and hardware demands and dreams of having a seamless cloud solution for his internal systems. Further there are different business units and associated Operations team who prefer to use slightly varying technologies for reasons ranging from business to Ops preference/competency. With that in mind, applications need to be built so they can run on multiple cloud environments but the end-user experience has to be one and seamlessly done. With these challenges in mind, the team at Banq.IO turns to use BusinessWorks Container Edition to build their applications and services.

This process here represents a simple account service app that:
* Receives a request
* Validates the customers
* If invalid, returns with an error
* If valid, proceeds to call the internal services to fetch the account data

### Git Repository Contents

This Git repository contains the BW Container Edition Design-time project with the Maven files (POM, properties) for deployment.

### Contact

For any questions, please reach out to the Integration Product Management team at TIBCO (integration-pm@tibco.com)
