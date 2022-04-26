<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bet Royale App</title>

</head>
<body>
<form>

<input type="hidden" id="userId" name="userId" value="${user.id}"/>

  <div class="form-row">
    <div class="form-group col-md-4">
      <label for="inputEmail4">Username</label>
      <input type="email" class="form-control" id="inputEmail4" placeholder="${user.username}" value="${user.username}">
    </div>
    
    
    <div class="form-group col-md-4">
      <label for="inputPassword4">Password</label>
      <input type="password" class="form-control" id="user." placeholder="${user.password}" value="${user.password}">
    </div>
  </div>
  
  <div class="form-row">
  <div class="form-group col-md-4">
    <label for="inputAddress">Email</label>
    <input type="text" class="form-control" id="inputAddress" placeholder="${user.firstName}" value="${user.firstName}">
  </div>
  
  
  <div class="form-group col-md-4">
    <label for="inputAddress2">Address 2</label>
    <input type="text" class="form-control" id="inputAddress2" placeholder="${user.lastName}" value="${user.lastName}">
  </div>
  </div>
  
  
  <div class="form-row">
    <div class="form-group col-md-4">
      <label for="inputCity">City</label>
      <input type="text" class="form-control" id="inputCity" placeholder="${user.email}" value="${user.email}">
    </div>
    </div>
    
  <div class="form-row">
    <div class="form-group col-md-4">
      <label for="inputCity">City</label>
      <input type="text" class="form-control" id="inputCity" placeholder="${user.profileImage}" value="${user.profileImage}">
    </div>
    </div>
    
    
    
  <div class="form-row">
    <div class="form-group col-md-12">
      <label for="inputCity">City</label>
      <input type="text" class="form-control" id="inputCity" placeholder="${user.aboutMe}" value="${user.aboutMe}">
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

