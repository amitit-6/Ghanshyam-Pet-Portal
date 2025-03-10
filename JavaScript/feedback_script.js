function validateForm() {
            let isValid = true;

            // Clear previous errors
            document.getElementById('nameError').textContent = "";
            document.getElementById('emailError').textContent = "";
            document.getElementById('genderError').textContent = "";
            document.getElementById('phoneError').textContent = "";

            // Name validation
            const name = document.getElementById('name').value.trim();
            if (name === "") {
                document.getElementById('nameError').textContent = "Name is required.";
                isValid = false;
            }

            // Email validation
            const email = document.getElementById('email').value.trim();
            const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            if (!emailRegex.test(email)) {
                document.getElementById('emailError').textContent = "Enter a valid email address.";
                isValid = false;
            }

            // Gender validation
            const gender = document.querySelector('input[name="gender"]:checked');
            if (!gender) {
                document.getElementById('genderError').textContent = "Please select your gender.";
                isValid = false;
            }

            // Phone number validation
            const phone = document.getElementById('phone').value.trim();
            const phoneRegex = /^[0-9]{10}$/;
            if (!phoneRegex.test(phone)) {
                document.getElementById('phoneError').textContent = "Enter a valid 10-digit phone number.";
                isValid = false;
            }

            if (isValid) {
                alert('Feedback submitted successfully!');
                document.getElementById('feedbackForm').reset();
            }
        }