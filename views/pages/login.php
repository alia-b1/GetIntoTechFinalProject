<?php
    session_start();
?>
<div class="container py-3">
    <h2 class="instructions">Please login</h2>
    <form class="py-3" method="post">
        <div class="form-group">
            <label for="exampleDropdownFormEmail1">Email</label>
            <input type="email" name="email" class="form-control" id="exampleDropdownFormEmail1" placeholder="Email">
        </div>
        <div class="form-group">
            <label for="exampleDropdownFormPassword1">Password</label>
            <input type="password" name="password" class="form-control" id="exampleDropdownFormPassword1" placeholder="Password">
        </div>
        <div class="form-check">
            <input type="checkbox" class="form-check-input" id="dropdownCheck">
            <label class="form-check-label" for="dropdownCheck">
                Remember me
            </label>
        </div>
        <button type="submit" class="btn btn-primary">Sign in</button>
    </form>
    <div class="dropdown-divider"></div>
    <a class="dropdown-item" href="#">New around here? Sign up</a>
    <a class="dropdown-item" href="#">Forgot password?</a>
</div>