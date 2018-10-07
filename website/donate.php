<?php
							  // Create database connection
							  $db = mysqli_connect("localhost", "root", "", "nmimsaasara");



                  $name = $_POST['name'];
                  $amount = $_POST['amount'];
                  $email = $_POST['email'];
                  //$anonymous = $_POST['anonymous'];
                  //print_r($name);
							    #$userid = $_POST["userid"];
							  	$sql = "insert into donations(donor_name,donation_amount,donor_email) values('$name','$amount','$email')";
							  	// execute query
							  	mysqli_query($db, $sql);

							  //$result = mysqli_query($db, "SELECT * FROM forum");

							  //}
                ?>
                <!DOCTYPE html>
                <html>
                <form action="https://www.paypal.com/cgi-bin/webscr" method="post">

                    <!-- Identify your business so that you can collect the payments. -->
                    <input type="hidden" name="business"
                        value="donations@Helpfoundation.org">

                    <!-- Specify a Donate button. -->
                    <input type="hidden" name="cmd" value="_donations">

                    <!-- Specify details about the contribution -->
                    <input type="hidden" name="item_name" value="Help Foundation">
                    <input type="hidden" name="item_number" value="Suicide Prevention">
                    <input type="hidden" name="currency_code" value="USD">
                    <input type="submit" name="submit" value="Proceed to transaction">
							</form>
              </html>
