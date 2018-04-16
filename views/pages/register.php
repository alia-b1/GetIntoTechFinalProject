<div class="container py-3">
    <form method="post">
  <div class="form-row">
    <div class="col-md-4 mb-3">
      <label for="first_name_field">First name</label>
      <input type="text" class="form-control" id="first_name_field" placeholder="First name" value="" required name="first_name">
    </div>
    <div class="col-md-4 mb-3">
      <label for="validationServer02">Last name</label>
      <input type="text" class="form-control" id="validationServer02" placeholder="Last name" value="" required name="last_name">
    </div>
    <div class="col-md-4 mb-3">
      <label for="validationServerPassword">Password</label>
      <div class="input-group">
          <input type="password" class="form-control" id="validationServerUsername" placeholder="Password" aria-describedby="inputGroupPrepend3" required name="password">
      </div>
    </div>
  </div>
  <div class="form-row">
      <div class="col-md-6 mb-3">
      <label for="validationServer05">Email Address</label>
      <input type="text" class="form-control" id="validationServer05" placeholder="Email Address" required name="email">      
    </div>
    <div class="col-md-3 mb-3">
      <label for="validationServer03">Date of Birth</label>
      <input type="date" class="form-control " id="validationServer03" placeholder="Date of Birth" required name="dob">     
    </div>
  </div>
  <div class="form-group">
    <div class="form-check">
      <input class="form-check-input" type="checkbox" value="" id="invalidCheck3" required>
      <label class="form-check-label" for="invalidCheck3">
        Agree to terms and conditions
      </label>    
    </div>
  </div>
  <button class="btn btn-primary" type="submit">Submit form</button>
</form>
</div>
