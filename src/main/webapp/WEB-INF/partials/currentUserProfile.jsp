<link href="https://fonts.googleapis.com/css?family=Indie+Flower" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link href="../../assets/css/style.css" rel="stylesheet" >

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


    <div class="profile-container">
        <h4><strong>First Name:   </strong><em>${sessionScope.user.first_name}</em></h4>
        <h4><strong>Last Name:   </strong><em>${sessionScope.user.last_name}</em></h4>
        <h4><strong>Email:   </strong><em>${sessionScope.user.email}</em></h4>
        <h4><strong>Member Location:   </strong><em>${sessionScope.user.location}</em></h4>
        <h4><strong>Member Since:   </strong><em>${sessionScope.user.user_since}</em></h4>
        <h4><strong>Profile Image:   </strong><em>${sessionScope.user.profile_pic}</em></h4>
    </div>
        <br>
    <button>Edit My Profile</button>
