<?php
  define("PAGE_TITLE", "Liste alphabétique des pays d'Afrique");
  require("inc/inc.kickstart.php");
?>

<main class="pays-liste">
<?php
  
  $tableau = [];
  $requete = "SELECT * FROM `country` ORDER BY `country_name`";

  try {

    $etape = $pdo->prepare($requete);
    $etape->execute();
    $nbreResultat = $etape->rowCount();

    if ($nbreResultat) {
      $tableau = $etape->fetchAll();
    } else {
      echo "<pre>✖️ La requête SQL ne retourne aucun résultat</pre>";
    }

  } catch (PDOException $e) {

    echo "<pre>✖️ Erreur liée à la requête SQL :\n" . $e->getMessage() . "</pre>";

  }
  
  // Extraits les noms des pays dans un nouveau tableau
  foreach ($tableau as $pays) {
    $nomsDesPays[] = $pays["country_name"];
  }
  
  // Modifie les informations de localisation
  setlocale(LC_ALL, "fr_FR.UTF-8");

  // Trie les tableaux multidimensionnels
  // SORT_LOCALE_STRING - compare les éléments sous forme de chaînes de caractères, en se basant sur la locale courante. La fonction utilise les locales, et elles peuvent être modifiées en utilisant la fonction setlocale()
  array_multisort($nomsDesPays, SORT_LOCALE_STRING, $tableau);

  foreach ($tableau as $pays) {
    echo "<section>";
    echo "<h1>" . htmlentities($pays["country_name"]) . "</h1>";
    echo "<h2>" . htmlentities($pays["country_flag"]) . "</h2>";
    echo "<div>" . htmlentities(number_format($pays["country_area"], 0, ',', ' ')) . " km²</div>";
    echo "<div>" . htmlentities($pays["country_capital"]) . "</div>";
    echo "</section>";
  }

?>
</main>

<?php require("inc/inc.footer.php"); ?>
