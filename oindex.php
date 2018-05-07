<?php

//AUTHOR: Robert Saternus

define("ADRESAT", "Robert Saternus <robert.saternus@gmail.com>");

require_once("szablon.php");

echo $header;
echo $header_content;
echo $section_kim;
echo $section_tech;
echo $section_projekty;
echo $section_wspolpraca;



if(isset($_POST['checker'])){   //sprawdzenie czy formularz został przesłany

    if(($_POST['name'] != '') && ($_POST['email'] != '') && ($_POST['wiadomosc'] != '')){

        $wiadomosc = wordwrap($_POST['wiadomosc'], 80, "<br />" );


        $msg = "Wiadomość z poftfolia.

        {$_POST['name']} w formularzu kontaktowym napisał następującą wiadomość:
        {$wiadomosc}

        Odpisz na e-mail: {$_POST['email']}";

        $send1 = mail(ADRESAT, 'Robert Saternus - Portfolio', $msg);

        // Kopia do nadawcy


        $date = date("d.m.Y");

        $msg = "Witaj! Twoja wiadomość została wysłana!

        Dziękuję za nawiązanie kontaktu ze mną.
        W dniu {$date} napisałeś do mnie wiadomość korzystając z formularza na stronie: www.robertsaternus.pl
        Skontaktuję się z Tobą tak szybko jak będzie to możliwe!

        Pozdrawiam!
        Robert Saternus";

        $send2 = mail($_POST['email'], 'Robert Saternus - Portfolio', $msg);

        if($send1 && $send2){
            echo "<p class=\"feedback_good\">
            Wiadomość została wysłana!</p>";

            echo $section_kontakt;
        }
        else{
            echo "<p class=\"feedback_bad\">
            Podczas wysyłania wiadomości wystąpił błąd!<br />Spróbuj ponownie za chwilę</p>";

            echo $section_kontakt;
        }
    }

    else{
        echo "<p class=\"feedback_bad\">
            Wypełnij wszystkie pola poniższego formularza!</p>";

        echo $section_kontakt;
    }

}

else{
    echo $section_kontakt;
}

echo $footer;


?>