# Conference Room Booking System – API Usage Examples

This document provides realistic usage examples for the Conference Room Booking System API, covering authentication, room management, room bookings, and availability search.

--------------------------------------------------------------------------------------

# 1. Authentication
## Login
### Request
POST /auth/login  
Content-Type: application/json  

{
  email: "admin@test.com",
  password: "password123"
}
Response (200 Login Successful)

{
  token: "jwt-token-example",
  role: "Employee"
}
Usage
Authorization: Bearer jwt-token-example

# 2. Room Management
## Create Room
### Request

POST /rooms
Authorization: Bearer jwt-token-example
Content-Type: application/json
{
  name: "Conference Room A",
  capacity: 10,
  equipment: ["Projector", "Whiteboard", "Video Conferencing"]
}
Response (201 Room Created)
{
  id: 1,
  name: "Conference Room A",
  capacity: 10,
  equipment: ["Projector", "Whiteboard", "Video Conferencing"]
}

## Get All Rooms
### Request

GET /rooms

Response (200 Room found)
[
  {
    id: 1,
    name: "Conference Room A",
    capacity: 10,
    equipment: ["Projector", "Whiteboard", "Video Conferencing"]
  }
]
# 3. Availability
## Search Available Rooms
### Request

#### GET 
/availability?date=2026-05-25&startTime=09:00&endTime=10:00&minCapacity=10&equipment=Projector

Response (200 Room found)
{
    id: 1,
    name: "Conference Room A",
    capacity: 10,
    equipment: ["Projector" ]
}

No Results
Response (200 OK)
[ Nothing ]

# 4. Bookings
## Create Booking
### Request

#### POST 
/bookings
Authorization: Bearer jwt-token-example
Content-Type: application/json
{
  roomId: 1,
  date: "2026-05-25",
  startTime: "09:00",
  endTime: "10:00",
  teamSize: 8,
  equipmentRequirements: ["Projector", "Whiteboard"]
}

Response (201 Booking Created)
{
  bookingId: 1001,
  roomId: 1,
  date: "2026-05-25",
  startTime: "09:00",
  endTime: "10:00",
  teamSize: 8,
  equipmentRequirements: ["Projector", "Whiteboard"],
  status: "Confirmed"
}

Conflict Example (409 Conflict)
{
  status: 409,
  error: "Conflict",
  message: "Room already booked for selected time"
}

Validation Error (422 Unprocessable Entity)
{
  status: 422,
  error: "Unprocessable Entity",
  message: "Team size exceeds room capacity"
}

## 5. Cancel Booking
### Request

#### DELETE 
/bookings/1001?reason=Meeting cancelled
Authorization: Bearer jwt-token-example

Response (204 No Content)

Nothing returned.