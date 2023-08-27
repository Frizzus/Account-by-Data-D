<?php 

    final class Sqlite {
        public function __construct() {
            
        }

        public static const BD_PATH = "sqlite:".__DIR__."/../bd/account.db";
        private null|PDO $pdo;
        private null|PDOStatement $lastQuery;

        /**
         * Ouvre une connection à la base de données
         *
         * @return null|PDOException
         */
        public function open() : null|PDOException {
            try {
                $this->pdo = new PDO(Sqlite::BD_PATH);
                return null;
            } catch (PDOException $e) {
                return $e;
            }
        }

        /**
         * Ferme la connection à la base de données
         *
         * @return null|Error
         */
        public function close() : void {
            $this->pdo = null;
            $this->lastQuery = null;
        }

        public function query(string $query, array|null $attr) : bool {
            $this->lastQuery = $this->pdo->prepare($query);
            if (!$this->lastQuery) {
                return false;
            }
            return $this->lastQuery->execute($attr);
        }

        public function getLastQuery() : PDOStatement|null {
            return $this->lastQuery;
        }
    }
    
?>