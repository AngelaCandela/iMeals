<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20210321121225 extends AbstractMigration
{
    public function getDescription() : string
    {
        return '';
    }

    public function up(Schema $schema) : void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE meal_plans_recipes (meal_plan_id INT NOT NULL, recipe_id INT NOT NULL, INDEX IDX_A7B8FF89E4567599 (meal_plan_id), INDEX IDX_A7B8FF89FDF2B1FA (recipe_id), PRIMARY KEY(meal_plan_id, recipe_id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('ALTER TABLE meal_plans_recipes ADD CONSTRAINT FK_A7B8FF89E4567599 FOREIGN KEY (meal_plan_id) REFERENCES meal_plans (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE meal_plans_recipes ADD CONSTRAINT FK_A7B8FF89FDF2B1FA FOREIGN KEY (recipe_id) REFERENCES recipes (id) ON DELETE CASCADE');
        $this->addSql('DROP TABLE meal_plan_recipes');
    }

    public function down(Schema $schema) : void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE meal_plan_recipes (id INT AUTO_INCREMENT NOT NULL, meal_plan_id INT NOT NULL, recipe_id INT NOT NULL, INDEX IDX_FEB85BA959D8A214 (recipe_id), INDEX IDX_FEB85BA9912AB082 (meal_plan_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE `utf8_unicode_ci` ENGINE = InnoDB COMMENT = \'\' ');
        $this->addSql('ALTER TABLE meal_plan_recipes ADD CONSTRAINT FK_FEB85BA959D8A214 FOREIGN KEY (recipe_id) REFERENCES recipes (id) ON UPDATE NO ACTION ON DELETE NO ACTION');
        $this->addSql('ALTER TABLE meal_plan_recipes ADD CONSTRAINT FK_FEB85BA9912AB082 FOREIGN KEY (meal_plan_id) REFERENCES meal_plans (id) ON UPDATE NO ACTION ON DELETE NO ACTION');
        $this->addSql('DROP TABLE meal_plans_recipes');
    }
}
