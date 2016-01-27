<?php include("header.php"); ?>

<?php 
$date = date('jS F Y');
$hour = intval( date('H') );
$minute = intval( date('i') );


if( $minute < 30 ){
  if( $hour == 0 ){
    $time = "23:30 to 00:00";
  } 
  else{
    $time = ( ($hour-1) >= 10 ) ? ($hour-1) . ":30 to " . $hour . ":00" : "0" . ($hour-1) . ":30 to " . $hour . ":00" ;
  }
}
elseif ( $minute >= 30 ) {
  if( $hour == 0 ){
    $time = "00:00 to 00:30";
  } 
  else{
    $time = $hour . ":00 to " . $hour . ":30";
  }
}
else {
  
}


?>

    <div class="container">

      <form class="form-horizontal" action="insert.php" method="post">
        <div class="form-group">
          <label for="TimeSlot" class="col-sm-2 control-label">Time Slot</label>
          <div class="col-sm-4">
            <input type="text" class="form-control" name="TimeSlot" id="TimeSlot" value="<?php echo $time; ?>">
          </div>
          <label for="Date" class="col-sm-2 control-label">Date</label>
          <div class="col-sm-4">
            <input type="text" class="form-control" name="Date" id="Date" value="<?php echo $date; ?>">
          </div>
        </div>
        <div class="form-group">
          <label for="Log" class="col-sm-2 control-label">Log</label>
          <div class="col-sm-10">
            <textarea class="form-control" name="Log" rows="10" id="Log"></textarea>
          </div>
        </div>
        
        <div class="form-group">
          <div class="col-sm-offset-2 col-sm-10">
            <button type="submit" class="btn btn-primary">Submit</button>
          </div>
        </div>
      </form>
    </div><!-- /.container -->

    <footer class="footer">
      <div class="container">
        
      </div>
    </footer>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>
