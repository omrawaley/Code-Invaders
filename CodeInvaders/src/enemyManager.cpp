#include "enemyManager.h"

void EnemyManager::addEnemies(int layout[], int size)
{
	if(this->added)
		return;

	enemies.clear();

	this->lastY = 0;
	this->gotLastYPosition = false;
	this->direction = 1;
	this->inactiveEnemies = 0;

	for(int i = 0; i < size; ++i)
	{
		switch(layout[i])
		{
			case 0:
				this->enemies.push_back(python);
				break;

			case 1:
				this->enemies.push_back(javascript);
				break;

			case 2:
				this->enemies.push_back(java);
				break;

			case 3:
				this->enemies.push_back(empty);
				break;
		}

		if(i == size - 1)
			this->added = true;
	}
}

void EnemyManager::calculateMiddle(int size, int rows)
{
	auto enemiesPerRow = size / rows;

	auto gap = 10;

	auto totalGaps = gap * (enemiesPerRow);

	auto totalEnemyWidth = enemiesPerRow * 30;

	auto totalWidth = totalGaps + totalEnemyWidth;

	this->middleX = (constants::windowWidth - totalWidth) / 2;
}

void EnemyManager::arrangeEnemies(int size, int rows)
{
	if(this->arranged)
		return;

	calculateMiddle(size, rows);

	float xFactor;
	float yFactor = 1;

	float rowFactor = 1;

	for(int i = 0; i < size; ++i)
	{
		this->x = this->middleX + xFactor * constants::enemyDistanceX;
		this->y = yFactor * constants::enemyDistanceY;

		auto enemiesPerRow = size / rows;

		++xFactor;

		if(i == ((enemiesPerRow * rowFactor) - 1))
		{
			xFactor = 0;

			++yFactor;

			++rowFactor;
		}
		
		enemies.at(i).x = x;
		enemies.at(i).y = y;
		
		if(i == size - 1)
			this->arranged = true;
	}
}

void EnemyManager::moveEnemies()
{
	if(!this->added || !this->arranged)
		return;

	for(auto &enemy : enemies)
	{
		switch(direction)
		{
			case -1:
				enemy.x -= constants::enemySpeed;
				break;

			case 1:
				enemy.x += constants::enemySpeed;
				break;

			case 0:
				enemy.y += constants::enemySpeed;
				break;
		}
	
	}

	if(this->enemies.at(enemies.size() - 1).x >= constants::windowWidth - 30)
	{
		if(!gotLastYPosition)
		{
			this->lastY = this->enemies.at(0).y + constants::enemyDistanceY;
			this->gotLastYPosition = true;
		}

		direction = 0;

		if(this->enemies.at(0).y >= this->lastY)
		{
			direction = -1;

			gotLastYPosition = false;
		}
	}

	if(this->enemies.at(0).x <= 0)
	{
		if(!gotLastYPosition)
		{
			this->lastY = this->enemies.at(0).y + constants::enemyDistanceY;
			this->gotLastYPosition = true;
		}

		direction = 0;

		if(this->enemies.at(0).y >= this->lastY)
		{
			direction = 1;

			gotLastYPosition = false;
		}
	}
}

void EnemyManager::drawEnemies(sf::RenderWindow *window)
{
	for(auto &enemy : this->enemies)
	{
		enemy.draw(window);
	}
}