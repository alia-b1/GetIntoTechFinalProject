<!-- Title -->

<title>Search</title>

<!-- Logo -->

<div class="jumbotron p-3 p-md-5 text-white rounded bg-dark">
  <div class="col-md-12 px-0">
    <h1 class="display-4 font-italic" align="center">BLAH BLAH LAND</h1>
  </div>
</div>

<!-- Header -->

<h2>Search</h2>

<!-- Content -->

            <form method="post">
                <div class="form-row">
<!--                    <div class="col-sm-6 mb-3">-->
                        <label for="validationServer01">Search all articles:</label>
                        <input type="text" class="form-control is-valid" id="validationServer01" name="search">
                    </div>
                </div><br>
                <button class="btn btn-primary" type="submit">Search</button>
            </form>
            <table id="searchedBooks" class="table my-3">

                <tbody>
                    <?php 
//                    if(!empty($_POST["search"])){
//                    $search = filter_var($_POST["search"], FILTER_SANITIZE_STRING);
//                    $searched->searchByAll($search);
//                    } 
                    ?>

                </tbody>
            </table>
