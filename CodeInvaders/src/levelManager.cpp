#include "levelManager.h"

void LevelManager::loadLevel(Level level)
{
	this->enemyManager.added = false;
	this->enemyManager.arranged = false;

	this->enemyManager.addEnemies(level.layout, level.size);
	this->enemyManager.arrangeEnemies(level.size, level.rows);
}

void LevelManager::loadNextLevel()
{
	this->enemyManager.added = false;
	this->enemyManager.arranged = false;

	this->enemyManager.addEnemies(Levels::allLevels[this->currentLevel].layout, Levels::allLevels[this->currentLevel].size);
	this->enemyManager.arrangeEnemies(Levels::allLevels[this->currentLevel].size, Levels::allLevels[this->currentLevel].rows);

	if(this->currentLevel == Levels::lastLevel)
	{
		this->currentLevel = 0;
	}
	else
	{
		++this->currentLevel;
	}
}

void LevelManager::moveEnemies()
{
	this->enemyManager.moveEnemies();
}

void LevelManager::drawEnemies(sf::RenderWindow *window)
{
	this->enemyManager.drawEnemies(window);
}