<!-- Title -->

<title>Submit a new article</title>

<!-- Logo -->

<div class="jumbotron p-3 p-md-5 text-white rounded bg-dark">
  <div class="col-md-12 px-0">
    <h1 class="display-4 font-italic" align="center">BLAH BLAH LAND</h1>
  </div>
</div>

<!-- Header -->

<h2>Submit a new article</h2>

<!-- Content -->

<form action="" method="POST" class="w3-container" enctype="multipart/form-data" id="articleform">
         <label>Title</label>
        <input class="w3-input" type="text" name="title" required autofocus>
    </p>
    <p>
              <label>Date</label> 
              <input class="w3-input" type="date" name="datetoday" placeholder="YYYY-MM-DD"required>  
    </p>
    <p>
        <label>Email</label>
        <input class="w3-input" type="text" name="email" required autofocus>
    </p>
        <p>
        <label>Password</label>
        <input class="w3-input" type="password" name="password" required autofocus>
    </p>
<!--    <p>
        <label>Your Article</label>
        <input class="w3-input" type="text" name="article" required autofocus>
    </p>-->
</form>
<br>
<br>
<textarea rows="4" cols="50" name="article" type="text" form="articleform">
Enter text here...</textarea>
<br>
<select name="category" form="articleform">
  <option value="1">Love Actually</option>
  <option value="100">Despicable Me</option>
  <option value="17">Ace Ventura Pet Detective</option>
  <option value="4">Pretty Woman</option>
  <option value="52">Black Swan</option>
</select>
            
<!--  <input type="hidden" 
	   name="MAX_FILE_SIZE" 
         value="10000000"
         />

  <input type="file" name="myUploader" class="w3-btn w3-pink" required />
  <p>-->

    <input class="w3-btn w3-pink" form="articleform" type="submit" value="Add Blog Post">
  </p>
  </form>
