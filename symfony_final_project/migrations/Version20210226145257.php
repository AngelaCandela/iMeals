<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20210226145257 extends AbstractMigration
{
    public function getDescription() : string
    {
        return '';
    }

    public function up(Schema $schema) : void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE ingredients RENAME INDEX ingredient_name TO UNIQ_4B60114F72CE90');
        $this->addSql('ALTER TABLE meal_plan_recipes ADD id INT AUTO_INCREMENT NOT NULL, ADD PRIMARY KEY (id)');
        $this->addSql('ALTER TABLE recipe_diets ADD id INT AUTO_INCREMENT NOT NULL, ADD PRIMARY KEY (id)');
        $this->addSql('ALTER TABLE recipe_ingredients ADD id INT AUTO_INCREMENT NOT NULL, ADD PRIMARY KEY (id)');
        $this->addSql('ALTER TABLE recipe_meals ADD id INT AUTO_INCREMENT NOT NULL, ADD PRIMARY KEY (id)');
        $this->addSql('ALTER TABLE users RENAME INDEX user_email TO UNIQ_1483A5E9550872C');
    }

    public function down(Schema $schema) : void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE ingredients RENAME INDEX uniq_4b60114f72ce90 TO ingredient_name');
        $this->addSql('ALTER TABLE meal_plan_recipes MODIFY id INT NOT NULL');
        $this->addSql('ALTER TABLE meal_plan_recipes DROP PRIMARY KEY');
        $this->addSql('ALTER TABLE meal_plan_recipes DROP id');
        $this->addSql('ALTER TABLE recipe_diets MODIFY id INT NOT NULL');
        $this->addSql('ALTER TABLE recipe_diets DROP PRIMARY KEY');
        $this->addSql('ALTER TABLE recipe_diets DROP id');
        $this->addSql('ALTER TABLE recipe_ingredients MODIFY id INT NOT NULL');
        $this->addSql('ALTER TABLE recipe_ingredients DROP PRIMARY KEY');
        $this->addSql('ALTER TABLE recipe_ingredients DROP id');
        $this->addSql('ALTER TABLE recipe_meals MODIFY id INT NOT NULL');
        $this->addSql('ALTER TABLE recipe_meals DROP PRIMARY KEY');
        $this->addSql('ALTER TABLE recipe_meals DROP id');
        $this->addSql('ALTER TABLE users RENAME INDEX uniq_1483a5e9550872c TO user_email');
    }
}
