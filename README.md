# Bitcube Project Alpha
This is Documentation for The Booking Conference Rooms System

# Developer Onboarding (In Progress)

This project is being developed incrementally as part of the Bitcube professional training program and sprint simulation activities.

The purpose of this section is to help new contributors understand:

What the system is intended to become?
How project documentation is organised?
Where to find important sprint artefacts and collaboration records?
How team members contribute through Git workflows and Pull Requests?

As the system evolves, this README will expand with setup instructions, implementation details, testing guidance, and deployment documentation.

# System Context

The Conference Room Booking System's purpose is to simplify room booking scheduling by allowing:

- Basic room booking based on availability
- Filtering conference room by capacity
- Setting up recurring meetings
- Booking conflict prevention and resolution
- Track room usage and booking history
- Generate and export reports

The system is currently represented through:

- Sprint planning
- User stories and acceptance criteria
- Sprint review summaries
- Pull Request communication

Implementation details will be introduced later modules.

# Quick Start

Follow these instructions for a quick setup and how to run the Conference Booking System html Welcome file

## Prerequisites
Verify if you have the following tools before starting:
- Visual Studio Code
- Docker Desktop
- Git
- Web browser (Chrome, Edge, Firefox)

## Step 1: Clone the repository
- Create a new local folder
- Open your terminal 
- Type in >>> git clone https://github.com/Kavin-Maziya/bitcube-project-alpha.git
- This process should clone the repository successfully

## Step 2: Create a docker image
- After cloning the repository
- Navigate into the project folder using >>> cd bitcube-project-alpha
- Run docker command >>> docker build -t conference-room-booking-system . 
- This should build a docker image for the project

## Step 3: Run docker container
- Copy and paste this to the terminal to Run the container using port mapping and environment variables:
docker run -d -p 8080:80 -e APP_ENV=development -e API_VERSION=v1 --name booking-system-container conference-room-booking-system

## Step 4: Run the app
- Then run this command to run the app >>> docker run -d -p 8080:80 conference-room-booking-system
- Open your browser and paste >>> http://localhost:8080 to the search address 
- The application should run successfully

## Step 5: Verify Running commands (optional)

- Run: docker ps you should be able to see booking-system-container running successfully

## Step 6: Stop the Container

- Run this command to stop the running container: docker stop booking-system-container


# Project Documentation

## Sprint Documentation

- user-stories.md : Contains user stories and acceptance criteria for system functionality and core fetures.

- epics.md : Groups User Stories into one major core feature

- priority-matrix.md : Lists User Stories in a table with their business value, technical complexity and sprint category

- sprint-1-planning.md : Contains sprint planning notes, sprint goals, selected backlog items, task assignments.

- sprint-1-dailies.md : Contains daily standup reports using the yerseteday, today, blocker format

- sprint-1-review.md : Summarises completed work, incomplete work, and sprint outcomes.

- sprint-1-checkpoint.md : Tracks mid sprint progress and user story status.

- sprint-1-retrospective.md : Contains reflections on team workflow, assumptions, and improvement areas.

- sprint-1-summary.md : Summarises what was delivered and what is not completed 

- personal-reflection,md : Personal reflection notes on key learning and assumptions that failed during my sprint

- documentation-and-collaboration-reflection.md : Reflection on documentation practices, Pull Requests, and professional collaboration.


## Repository Structure
/docs          -> Sprint documentation and markdown artefacts

.../sprint-1-planning -> Contains sprint-1-planning.md , sprint-1-dailies.md , sprint-1-checkpoint.md, sprint-1-review.md

.../sprint-1-review -> Contains sprint-1-retrospective.md , sprint-1-summary.md , sprint-1-review.md , personal-reflection.md 

/lib           -> Application source code (future implementation)
/src           -> Subfolder for source code
.../index.html -> Contains html code for the system welcoming page
.../Dockerfile -> contaions docker information to run the system
/.github       -> GitHub workflows and CI automation
.gitignore     -> Contains commands to track files
README.md      -> Main onboarding and project overview

## Upcoming Sections

- Application Structure
- Database Design
- API Documentation
- Testing Strategy
- Deployment Instructions
- Security Considerations
- Coding Standards
- Troubleshooting Guide
- Room Scheduling Algorithms