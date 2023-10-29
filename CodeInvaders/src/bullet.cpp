#include "bullet.h"

void Bullet::moveBullet()
{
	if(!this->isActive)
		return;

	if(this->y + constants::bulletHeight < 0)
	{
		this->isActive = false;
	}
	else
	{
		this->y -= speed;
	}
}

void Bullet::setActive(bool active)
{
	this->isActive = active;
}

bool Bullet::getActive()
{
	return this->isActive;
}

void Bullet::draw(sf::RenderWindow *window)
{
	if(!this->isActive)
		return;

	this->shape.setPosition(this->x, this->y);

	window->draw(this->shape);
}