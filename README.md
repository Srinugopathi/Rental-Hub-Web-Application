# Rental-Hub-Web-Application
Follow these steps to set up the project locally using MAMP:

## Prerequisites
Make sure you have **MAMP** installed on your machine. If you don't have it yet, download and install it from [MAMP's official website](https://www.mamp.info/en/).

## Setup Instructions

1. **Install MAMP**
   - Download and install MAMP from the official website.
   - Once installed, launch the MAMP application.

2. **Clone the Repository**
   - Open your terminal or Git Bash.
   - Clone the repository to your local machine by running the following command:
     ```bash
     git clone https://github.com/JoshithaVelkur/Rental-Hub-Web-Application.git
     ```

3. **Move the Project to MAMP's `htdocs` Folder**
   - After cloning the repository, navigate to the MAMP installation folder. Inside the MAMP folder, find the `htdocs` directory. This is where your project files should reside.
   - Move the cloned project folder into the `htdocs` folder. This ensures that MAMP can access your project.

4. **Start MAMP**
   - Open the MAMP application if it's not already running.
   - Start the servers by clicking the **Start Servers** button in the MAMP control panel.

5. **Upload Database via phpMyAdmin**
   - Open your browser and go to `http://localhost:8888/phpMyAdmin`.
   - In phpMyAdmin, select the **Databases** tab and create a new database for your project.
   - After creating the database, go to the **Import** tab.
   - Click **Choose File** and select the `.sql` file that was provided with the project.
   - Click the **Go** button to import the database.

6. **View the Project**
   - Once everything is set up, go to `http://localhost:8888` in your browser to view your project.

---

This guide should help you get the project up and running locally using MAMP. If you encounter any issues, feel free to consult the MAMP documentation or reach out for support.

"# Rental-Hub-Web-Application" 
