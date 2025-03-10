<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>About Us - GhanshyamPetPortal</title>
        <link rel="stylesheet" href="about_styles.css">
        <script src="about_scripts.js"></script>
    </head>
    <body>
        <header>
            <div class="logo">
                <a href="index.jsp"><img src="images/web-logo.png" alt="Website-Logo"/></a>
            </div>
            <nav>
                <ul>
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="BrowsePetsServlet">Browse Pets</a></li>
                    <li> <a href="adoptPet.jsp">Adopt a Pet</a></li>
                    <li><a href="about.jsp" class="active">About Us</a></li>
                    <li><a href="contact.jsp">Contact Us</a></li>
                    <li><a href="login.jsp">Login/Sign Up</a></li>
                </ul>  
            </nav>
        </header>

    <main>
        <section class="about-section">
            <h1>About Us</h1>
            <p>Welcome to <strong>GhanshyamPetPortal</strong>, your one-stop solution for all pet-related needs. Our platform is designed to simplify pet management, offering easy access to resources, services, and tools for pet owners and administrators alike.</p>

            <h2>Our Mission</h2>
            <p>We aim to connect pet owners with reliable services and create a comprehensive management system that ensures the well-being of pets everywhere. GhanshyamPetPortal provides tools to manage pet profiles, schedule appointments, and much more.</p>

            <h2>Features</h2>
            <ul>
                <li>Admin Panel for streamlined pet-related tasks.</li>
                <li>Comprehensive pet profile management.</li>
                <li>Appointment scheduling for veterinary services.</li>
                <li>Interactive user interface with modern design.</li>
                <li>Database integration using MySQL for secure data handling.</li>
            </ul>

            <h2>Technical Requirements</h2>
            <ul>
                <li><strong>Frontend:</strong> JSP, CSS, JavaScript</li>
                <li><strong>Backend:</strong> Java Servlets</li>
                <li><strong>Database:</strong> MySQL</li>
                <li><strong>Development Environment:</strong> Apache Tomcat</li>
                <li><strong>Browser Support:</strong> Modern browsers (Chrome, Firefox, Edge, Safari)</li>
            </ul>

            <h2>Our Vision</h2>
            <p>At GhanshyamPetPortal, we envision a world where pet management is seamless, and every pet gets the care and attention they deserve. By leveraging technology, we strive to bring pet owners closer to the resources they need.</p>

            <h2>Contact Us</h2>
            <p>Have questions or need assistance? Visit our <a href="contact.jsp">Contact Page</a> to reach out to our support team.</p>
        </section>
    </main>

    <footer>
        <p>&copy; 2025 GhanshyamPetPortal. All Rights Reserved.</p>
    </footer>
</body>
</html>
