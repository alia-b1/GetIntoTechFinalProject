<!-- Title -->

<title>Search</title>

<!-- Header -->

<h2>Hello, is it me you're looking for?</h2>

<!-- Content -->

        <p>Please search the site using the search box below:</p><br>
            <form action="?controller=user&action=search" method="post">
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
