#pragma once

#include <SFML/System.hpp>
#include <SFML/Graphics.hpp>

#include "enemyManager.h"
#include "level.h"
#include "levels.h"

class LevelManager
{
	public:

		int currentLevel = 0;

		EnemyManager enemyManager;

	public:

		void loadLevel(Level level);

		void loadNextLevel();

		void moveEnemies();

		void drawEnemies(sf::RenderWindow *window);
};