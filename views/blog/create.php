<form action="" method="POST" class="w3-container" enctype="multipart/form-data">
    
    <h2>New Article</h2>
</div>
    <p>
        <input class="w3-input" type="text" name="Title" required autofocus>
        <label>Name</label>
    </p>
    <p>
        <input class="w3-input" type="text" name="datetoday" required>
        <label>Date</label>   
    </p>
    
    <p>
        <input class="w3-input" type="text" name="UserID" required autofocus>
        <label>Email</label>
    </p>
    <p>
        <input class="w3-input" type="text" name="article" required autofocus>
        <label>Your Article</label>
    </p>
<br>
<select name="category" form="createblog">
  <option value="1">Love Actually</option>
  <option value="2"></option>
  <option value="3"></option>
  <option value="4"></option>
</select>
            
  <input type="hidden" 
	   name="MAX_FILE_SIZE" 
         value="10000000"
         />

  <input type="file" name="myUploader" class="w3-btn w3-pink" required />
  <p>
    <input class="w3-btn w3-pink" type="submit" value="Add Product">
  </p>
</form>
