#include "player.h"

void Player::movePlayer()
{
	if(sf::Keyboard::isKeyPressed(sf::Keyboard::Right))
	{
		if(this->x + constants::playerWidth < constants::windowWidth)
			this->x += this->speed;
	}

	if(sf::Keyboard::isKeyPressed(sf::Keyboard::Left))
	{
		if(this->x > 0)
			this->x -= this->speed;
	}
}

void Player::shootBullet()
{
	if(sf::Keyboard::isKeyPressed(sf::Keyboard::Space) && this->canShoot)
	{
		bullets.push_back(Bullet(this->x + ((constants::playerWidth / 2) - (constants::bulletWidth / 2)), this->y - constants::bulletHeight));

		this->canShoot = false;
	}

	if(!this->canShoot)
	{
		if(shootTimer > 0)
		{
			--shootTimer;
		}
		else
		{
			this->canShoot = true;

			shootTimer = constants::bulletCooldown;
		}
	}
}

void Player::resetPosition()
{
	this->x = constants::playerStartX;
}

void Player::resetBullets()
{
	this->bullets.clear();
}

void Player::reset()
{
	this->resetPosition();
	this->resetBullets();
}

void Player::draw(sf::RenderWindow *window)
{
	this->sprite.setPosition(this->x, this->y);

	window->draw(this->sprite);
}