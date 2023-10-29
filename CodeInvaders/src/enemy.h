#pragma once

#include <SFML/System.hpp>
#include <SFML/Graphics.hpp>

#include "bullet.h"

enum class EnemyType
{
	Python,
	Javascript,
	Java,
	Empty,
};

class Enemy
{
	private:

		bool isActive;

		sf::Texture texture;

	public:

		float x;
		float y;

		bool canShoot;

		EnemyType type;

		std::vector<Bullet> bullets;

		Enemy(std::string texturePath, EnemyType type, bool isActive)
		{
			this->texture.loadFromFile(texturePath);
			this->sprite.setTexture(texture);

			this->type = type;

			this->setActive(isActive);
		}

		void setActive(bool active);

		bool getActive();

		void draw(sf::RenderWindow *window);

		sf::Sprite sprite;
};