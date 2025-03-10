<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Feedback Form</title>
        <link rel='stylesheet' href="feedback_style.css">
    </head>
    <body>
        <div class="feedback-form">
            <h2>Feedback Form</h2>
            <form id="feedbackForm">
                <div class="form-group">
                    <label for="name">Name</label>
                    <input type="text" id="name" name="name" placeholder="Enter your name">
                    <div class="error" id="nameError"></div>
                </div>

                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" id="email" name="email" placeholder="Enter your email">
                    <div class="error" id="emailError"></div>
                </div>

                <div class="form-group">
                    <label>Gender</label>
                    <div class="gender-group">
                        <label><input type="radio" name="gender" value="Male"> Male</label>
                        <label><input type="radio" name="gender" value="Female"> Female</label>
                        <label><input type="radio" name="gender" value="Other"> Other</label>
                    </div>
                    <div class="error" id="genderError"></div>
                </div>

                <div class="form-group">
                    <label for="phone">Phone Number</label>
                    <input type="tel" id="phone" name="phone" placeholder="Enter your phone number">
                    <div class="error" id="phoneError"></div>
                </div>

                <div class="form-group">
                    <label for="other">Other Comments</label>
                    <textarea id="other" name="other" placeholder="Your comments..."></textarea>
                </div>

                <button type="button" class="btn-submit" onclick="validateForm()">Submit</button>
            </form>
        </div>
        <script src="feedback_script.js"></script>
    </body>
</html>
