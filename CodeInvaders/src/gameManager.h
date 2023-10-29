#pragma once

#include <SFML/System.hpp>
#include <SFML/Graphics.hpp>

#include "constants.h"

enum class GameState
{
	Title,
	Game,
	GameOver,
	Win,
};

class GameManager
{
	private:

		int score;

		bool gameOver;

		GameState gameState;

	public:

		void increaseScore(int score);

		int getScore();

		bool getGameOver();

		void setGameOver(bool gameOver);

		void resetScore();

		bool collide(int x1, int y1, int width1, int height1, int x2, int y2, int width2, int height2);

		void setGameState(GameState gameState);

		GameState getGameState();
};

static GameManager gameManager;