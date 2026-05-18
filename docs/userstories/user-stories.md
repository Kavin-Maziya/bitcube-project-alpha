## Story #1: Basic Room booking
**As an Employee 
**I want to book an available conference room
**So that I am going to be able conduct meetings with my team

### Acceptance Criteria:
- [ ] Given that I am already logged in to the system and I'm on my Employee dashboard, When I book an available room for a specific time and date, Then the booking should be confirmed and saved.
- [ ] Given that the room I want to book is already booked, When I try to book it, Then a message confirming room availability should be displayed
- [ ] Given I successfully booked a room without complications, When navigate back to my dashboard, Then I should see a list of my active bookings and an option to view booking history

### Story Points:
3
### Priority:
High 
### Dependencies:
- None

### Technical Notes:
- Requires database to store Booking details
- Requires live calendar and clock integration for booking dates and time

### Design Notes:
- Simple user friendly booking process


## Story #2: Setting up Recurring meetings
**As an Employee
**I want to set Recurring meetings
**So that I don't have to book for the same dates manually

### Acceptance Criteria:
- [ ] Given I have upcoming reccuring meetings, When I am booking for a conference room, Then I should be able to select recurring on the calendar and have all the dates recurring dates confirmed 
- [ ] Given there's a clash on my schedule, When I am trying to book a conference room, Then I should recieve a message confirming the clash and I should be asked to reschedule or cancel

### Story Points:
5
### Priority:
Medium

### Dependencies:
- Story #1

### Technical Notes:
- None

### Design Notes:
- Clear Calendar repeat dates option


## Story #3: Room Capacity filtering
**As an Employee
**I want to filter rooms by capacity
**So that I can book a room to accomodate the number of my team members

### Acceptance Criteria:
- [ ] Given I enter my team size, When I search for a room to book, Then I should be able to book a room to accomodate my team size
- [ ] Given that no room is available for my specified team size, When I search for a room to book, Then a message saying no results should be displayed
- [ ] Given I was able to book a room for my team size, When I search for a room to book, Then a booking confirmation message should be displayed

### Story Points:
2
### Priority:
Low

### Dependencies:
- Story #1

### Technical Notes:
- None

### Design Notes:
- Dropdown list option containing minimum to maximum team size values


## Story #4: Booking Cancellation
**As an Employee
**I want to cancel a booking
**So that a room won't be booked and made available

### Acceptance Criteria:
- [ ] Given that I have room booked, When I want to cancel, Then I should specify a reason for my cancellation and the booking will be cancelled
- [ ] Given I haven't specified a reason for cancellation, When I want to cancel, Then an error message should be shown for the required field
- [ ] Given I was able to cancel, When navigate back to the dashboard, Then the cancelled booking will not be available in my active booking list

### Story Points:
3

### Priority:
Medium

### Dependencies:
- Story #1

### Technical Notes:
- Update active booking on the dashboard and reflect the cancelled booking on my booking history

### Design Notes:
- A visible a clear cancel button
- When the button is accidentally clicked a promted message asking the user to confirm



## Story #5: Room Equipment Requirements
**As an Employee
**I want to specify the room equipment that I require
**So that I will be able to conduct my meetings successfully

### Acceptance Criteria:
- [ ] Given I filter for rooms with the equipment I require, When search for a room to book, Then a list of available rooms with the specified equipment should show
- [ ] Given there's no available room with the equipment I require, When search for a room to book, Then a message saying that there's no available room with the equipment
- [ ] Given I found a room with the equipment I require, When search for a room to book, Then a booking should be confirmed with the equipment details

### Story Points:
2

### Priority:
Low

### Dependencies:
- Story #1

### Technical Notes:
- None

### Design Notes:
- Clear and visible equipment checkboxes




## Story #6: Admin dashboard viewing
**As an Admin
**I want to view my dashboard
**So that I can perfom my administrative role

### Acceptance Criteria:
- [ ] Given I'm logged in as an Admin, When I view my dahboard, Then I should be able to monitor all bookings made on the system
- [ ] Given I want to filter bookings, When I select filter for a specific booking, Then the dashboard should update and show the filtered bookings
- [ ] Given I want to see booking history, When I select the history option, Then all booking history will display

### Story Points:
5

### Priority:
High

### Dependencies:
- Story #1
- Story #2
- Story #3
- Story #4
- Story #5

### Technical Notes:
- Admin role requirement
- All Bookings database access

### Design Notes:
- Simple Table View design




## Story #7: Room maintenance scheduling
**As a Facilities Manager
**I want to schedule room maintenance
**So that all conference rooms remain in good condition

### Acceptance Criteria:
- [ ] Given I select a room on my dashboard, When I want to schedule maintenance, Then the selected room should be made unavailable to Employees due to maintenance
- [ ] Given I selected an occupied room, When I want to schedule maintenance, Then a message saying the room is occupied select another date
- [ ] Given room maintenance is done, When I update my dashboard, Then the room should be made available

### Story Points:
8

### Priority:
High

### Dependencies:
- Story #1

### Technical Notes:
- Room under maintenance flag on the rooms database

### Design Notes:
- Facilities Manager Dashboard
- Maintenance Calendar to track schedule



## Story #8: Visitor booking assistance
**As a Receptionist
**I want to assist visitors with conference room bookings
**So that visitors can easily access the conference rooms

### Acceptance Criteria:
- [ ] Given that a visitor wants to book a room, When I book an available room, Then the room will be booked under the visitor's details
- [ ] Given a visitor made a booking, When the admin accesses thier dashboard, Then booking should be visible

### Story Points:
2

### Priority:
Low

### Dependencies:
- Story #1

### Technical Notes:

- Guest booking option

### Design Notes:
- Receptionist Dashboard


## Story #9: Booking conflict resolution
**As an Admin
**I want to identify and resolve conflicts
**So that no conflicting booking occur

### Acceptance Criteria:
- [ ] Given there's a booking conflict, When the system detects a conflict, Then as an Admin I should notified when I access the system
- [ ] Given there's a booking conflict, When I access the system, Then I should have the ability to resolve the conflict
- [ ] Given I resolved the conflict, When I update the system, Then the conflicts should be solved successfully

### Story Points:
13

### Priority:
High

### Dependencies:
- Story #1
- Story #2

### Technical Notes:
- Requires admin login for system override

### Design Notes:
- Easy to perfom conflict resolution actions



## Story #10: Usage reports generation
**As an Admin
**I want to generate room usage reports
**So that I can manage meeting history and equipment use

### Acceptance Criteria:
- [ ] Given that I am logged in as an Admin, When I generate room usage reports, Then the system should show the full room usage report
- [ ] Given that I want to view a report for a date range, When I filter the date range, Then room usage reports for that specific date range should show
- [ ] Given I want to export the reports from the system, When I export the generated report, Then system should prompt which format and allow the report to be downloaded


### Story Points:
5

### Priority:
Medium

### Dependencies:
- Story #6 

### Technical Notes:
- Requires report generation functionality
- Requires report exportation formats

### Design Notes:
- Eport button should be accessible easily

