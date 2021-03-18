<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20210317171748 extends AbstractMigration
{
    public function getDescription() : string
    {
        return '';
    }

    public function up(Schema $schema) : void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('DROP TABLE recipe_diets');
        $this->addSql('ALTER TABLE recipes ADD anything TINYINT(1) NOT NULL, ADD vegetarian TINYINT(1) NOT NULL, ADD vegan TINYINT(1) NOT NULL, ADD glutenfree TINYINT(1) NOT NULL, ADD dairyfree TINYINT(1) NOT NULL');
    }

    public function down(Schema $schema) : void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE recipe_diets (id INT AUTO_INCREMENT NOT NULL, recipe_id INT NOT NULL, recipe_diet VARCHAR(32) CHARACTER SET utf8mb4 NOT NULL COLLATE `utf8mb4_unicode_ci`, INDEX IDX_36EEDFB959D8A214 (recipe_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE `utf8_unicode_ci` ENGINE = InnoDB COMMENT = \'\' ');
        $this->addSql('ALTER TABLE recipe_diets ADD CONSTRAINT FK_36EEDFB959D8A214 FOREIGN KEY (recipe_id) REFERENCES recipes (id) ON UPDATE NO ACTION ON DELETE NO ACTION');
        $this->addSql('ALTER TABLE recipes DROP anything, DROP vegetarian, DROP vegan, DROP glutenfree, DROP dairyfree');
    }
}
