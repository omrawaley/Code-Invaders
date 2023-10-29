#pragma once

#include <SFML/System.hpp>
#include <SFML/Graphics.hpp>

#include "constants.h"

class Bullet
{
	private:

		bool isActive;

	public:

		float x;
		float y;

		float width;
		float height;

		float speed;

	public:

		Bullet(float x, float y) : speed(constants::bulletStartSpeed), width(constants::bulletWidth), height(constants::bulletHeight), isActive(true)
		{
			this->shape.setFillColor(sf::Color(21, 210, 25, 255));
			this->shape.setSize(sf::Vector2f(this->width, this->height));

			this->x = x;
			this->y = y;
			
			this->shape.setPosition(this->x, this->y);
		}

		void moveBullet();

		void setActive(bool active);

		bool getActive();

		void draw(sf::RenderWindow *window);

		sf::RectangleShape shape;
};