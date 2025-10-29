<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Student Management System</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: #111; /* dark black */
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
            color: #ffdd00; /* bright yellow */
        }
        header {
            background-color: #ffdd00; /* yellow */
            padding: 1rem 2rem;
            color: #111; /* black text */
            text-align: center;
            font-size: 1.8rem;
            font-weight: 700;
            box-shadow: 0 2px 6px rgba(255, 221, 0, 0.6);
        }
        main {
            flex-grow: 1;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            padding: 2rem;
            text-align: center;
        }
        h1 {
            margin-bottom: 0.5rem;
            font-weight: 700;
        }
        nav {
            margin-top: 2rem;
            display: flex;
            gap: 1.5rem;
            flex-wrap: wrap;
            justify-content: center;
        }
        a.button {
            text-decoration: none;
            background-color: #ffdd00; /* yellow */
            color: #111; /* black text */
            padding: 0.75rem 1.5rem;
            border-radius: 6px;
            font-weight: 700;
            box-shadow: 0 3px 8px rgba(255, 221, 0, 0.7);
            transition: background-color 0.3s ease, color 0.3s ease;
        }
        a.button:hover {
            background-color: #e6c800; /* darker yellow */
            color: #000;
            box-shadow: 0 5px 15px rgba(230, 200, 0, 0.9);
        }
        footer {
            text-align: center;
            padding: 1rem;
            background: #222;
            font-size: 0.9rem;
            color: #ffdd00;
            box-shadow: inset 0 1px 0 #444;
        }
        p {
            font-size: 1.1rem;
            max-width: 400px;
            margin: 0 auto;
            line-height: 1.4;
        }
    </style>
</head>
<body>
    <header>
        Student Management System
    </header>
    <main>
        <h1>Welcome!</h1>
        <h2>Amsyar is a really bad boy.</h2>
        <p>Manage your student records.</p>
        <nav>
            <a href="Insert.jsp" class="button">Insert </a>
            <a href="Update.jsp" class="button">Update </a>
            <a href="Delete.jsp" class="button">Delete </a>
            
        </nav>
    </main>
    <footer>
        &copy; 2025 Student Management System
    </footer>
</body>
</html>
