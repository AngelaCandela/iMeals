<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20210304110216 extends AbstractMigration
{
    public function getDescription() : string
    {
        return '';
    }

    public function up(Schema $schema) : void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE meal_plans ADD user_id INT NOT NULL');
        $this->addSql('ALTER TABLE meal_plans ADD CONSTRAINT FK_8FAD7007A76ED395 FOREIGN KEY (user_id) REFERENCES users (id)');
        $this->addSql('CREATE INDEX IDX_8FAD7007A76ED395 ON meal_plans (user_id)');
    }

    public function down(Schema $schema) : void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE meal_plans DROP FOREIGN KEY FK_8FAD7007A76ED395');
        $this->addSql('DROP INDEX IDX_8FAD7007A76ED395 ON meal_plans');
        $this->addSql('ALTER TABLE meal_plans DROP user_id');
    }
}
