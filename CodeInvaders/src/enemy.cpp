#include "enemy.h"

void Enemy::setActive(bool active)
{
	this->isActive = active;
}

bool Enemy::getActive()
{
	return this->isActive;
}

void Enemy::draw(sf::RenderWindow *window)
{
	if(!this->isActive)
		return;

	this->sprite.setPosition(this->x, this->y);

	window->draw(this->sprite);
}