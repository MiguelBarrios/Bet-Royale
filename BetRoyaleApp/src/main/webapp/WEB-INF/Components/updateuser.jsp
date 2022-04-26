<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

</head>
<body>
<form action="updateUser.do" method="post">

<input type="hidden" id="id" name="id" value="${user.id}"/>

  <div class="form-row">
    <div class="form-group col-md-4">
      <label for="inputEmail4">Username</label>
      <input type="text" class="form-control" name="username" placeholder="${user.username}" value="${user.username}">
    </div>
    
    
    <div class="form-group col-md-4">
      <label for="inputPassword4">Password</label>
      <input type="password" class="form-control" name="password" placeholder="${user.password}" value="${user.password}">
    </div>
  </div>  
  <div class="form-row">
  <div class="form-group col-md-4">
    <label for="inputAddress">First Name</label>
    <input type="text" class="form-control" name="firstName" placeholder="${user.firstName}" value="${user.firstName}">
  </div>
  
  
  <div class="form-group col-md-4">
    <label for="inputAddress2">Last Name</label>
    <input type="text" class="form-control" name="lastName" placeholder="${user.lastName}" value="${user.lastName}">
  </div>
  </div>
  

  
  <div class="form-row">
    <div class="form-group col-md-4">
      <label for="inputCity">Email</label>
      <input type="email" class="form-control" name="email" placeholder="${user.email}" value="${user.email}">
    </div>
    </div>
    
  <div class="form-row">
    <div class="form-group col-md-4">
      <label for="inputCity">Profile Image Url</label>
      <input type="text" class="form-control" name="profileImage" placeholder="${user.profileImage}" >
    </div>
    </div>
    
    
    
  <div class="form-row">
    <div class="form-group col-md-12">
      <label for="inputCity">About Me</label>
      <input type="text" class="form-control" name="aboutMe" placeholder="${user.aboutMe}" value="${user.aboutMe}">
    </div>
    </div>
    
    
    
  
  
  <div class="col-12">
    <div class="form-check">
      <input class="form-check-input" type="checkbox" value="" id="invalidCheck" required>
      <label class="form-check-label" for="invalidCheck">
        Agree to changes
      </label>
      <div class="invalid-feedback">
        You must agree before submitting.
      </div>
    </div>
  </div>
  
  
  <button type="submit" class="btn btn-primary">Submit Profile Changes</button>
  
</form>

