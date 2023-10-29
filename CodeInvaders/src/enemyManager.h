#pragma once

#include <SFML/System.hpp>
#include <SFML/Graphics.hpp>

#include "constants.h"
#include "enemy.h"
#include "gameManager.h"

class EnemyManager
{
	private:

		float x;
		float y;

		float middleX;

		float lastY;

		int direction = 1;

		bool gotLastYPosition;

		Enemy python = Enemy("textures/python.png", EnemyType::Python, true);
		Enemy javascript = Enemy("textures/javascript.png", EnemyType::Javascript, true);
		Enemy java = Enemy("textures/java.png", EnemyType::Java, true);
		Enemy empty = Enemy("textures/empty.png", EnemyType::Empty, false);

	public:

		int inactiveEnemies = 0;

		bool added;
		bool arranged;

		std::vector<Enemy> enemies;

		void addEnemies(int layout[], int size);

		void calculateMiddle(int size, int rows);

		void arrangeEnemies(int size, int rows);

		void moveEnemies();

		void drawEnemies(sf::RenderWindow *window);
};