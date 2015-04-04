Feature:
   As a customer,
   I wan to verify that I have certain order on the web application
   so that I can purchase

Scenario: verify existing wine on the page
  Given that we are on the home page of the app
  When we search for a wine called "Enoteca Waiters' Friend Double Lever Corkscrew - Red"
  Then we should see a wine called "Enoteca Waiters' Friend Double Lever Corkscrew - Red"
  And i should cost "5.40"