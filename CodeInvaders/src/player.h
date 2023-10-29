#pragma once

#include <SFML/System.hpp>
#include <SFML/Graphics.hpp>

#include <iostream>

#include "constants.h"
#include "bullet.h"

class Player
{
	private:

		float speed;

		int lives;

		float shootTimer;

		bool canShoot;

		sf::Texture texture;

	public:

		float x;
		float y;

		Player() : speed(constants::playerStartSpeed), x(constants::playerStartX), y(constants::playerStartY), lives(constants::playerStartLives), shootTimer(constants::bulletCooldown), canShoot(true)
		{
			this->texture.loadFromFile("textures/c++.png");
			this->sprite.setTexture(this->texture);

			this->sprite.setPosition(this->x, this->y);
		}

		void movePlayer();

		void shootBullet();

		void resetPosition();

		void resetBullets();

		void reset();

		void draw(sf::RenderWindow *window);

		sf::Sprite sprite;

		std::vector<Bullet> bullets;
};