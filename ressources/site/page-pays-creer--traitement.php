<?php
  define("PAGE_TITLE", "Traitement");
  require("inc/inc.kickstart.php");
?>

<main class="pays-creer">
<?php
  $nameCountry = $_POST['country_name'] ?? false;
  $flagCountry = $_POST['country_flag'] ?? false;
  $capitalCountry = $_POST['country_capital'] ?? false;
  $areaCountry = $_POST['country_area'] ?? false;

  
  $requete = "INSERT INTO `country`(`country_name`, `country_flag`, `country_capital`, `country_area`) 
  VALUES (:country_name, :country_flag, :country_capital, :country_area)";

  try {

    $prepare = $pdo->prepare($requete);
    $prepare->execute(array(
      ":country_name" => $nameCountry,
      ":country_flag" => $flagCountry,
      ":country_capital" => $capitalCountry,
      ":country_area" => $areaCountry
  
    ));
    $res = $prepare->rowCount();

    if ($res == 1) {
      echo "<h3>Merci !</h3>";
      echo "<p>Voici un récapitulatif de votre contribution :</p>";
      echo "<ul>"
          ."<li>Nom du pays : " . htmlentities($_POST["country_name"]) . "</li>"
          ."<li>Capitale du pays : " . htmlentities($_POST["country_capital"]) . "</li>"
          ."<li>Drapeau du pays : " . htmlentities($_POST["country_flag"]) . "</li>"
          ."<li>Superficie du pays (en km²) : " . htmlentities($_POST["country_area"]) . "</li>"
          ."<ul>";
      echo "<a href='page-pays-liste-alpha.php'><button>Consulter la liste des pays</button></a>";

    } else {
      echo "<pre>✖️ La requête SQL ne retourne aucun résultat</pre>";
    }

  } catch (PDOException $e) {

    echo "<pre>✖️ Erreur liée à la requête SQL :\n" . $e->getMessage() . "</pre>";

  }


?>
</main>

<?php require("inc/inc.footer.php"); ?>