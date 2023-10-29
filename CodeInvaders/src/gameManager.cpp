#include "gameManager.h"

void GameManager::increaseScore(int score)
{
	this->score += score;
}

int GameManager::getScore()
{
	return this->score;
}

bool GameManager::getGameOver()
{
	return this->gameOver;
}

void GameManager::setGameOver(bool gameOver)
{
	this->gameOver = gameOver;
}

void GameManager::resetScore()
{
	this->score = 0;
}

bool GameManager::collide(int x1, int y1, int width1, int height1, int x2, int y2, int width2, int height2)
{
	if(x1 <= x2 + width2)
		if(x1 + width1 >= x2)
			if(y1 <= y2 + height2)
				if(y1 + height1 >= y2)
					return true;

	return false;
}

void GameManager::setGameState(GameState gameState)
{
	this->gameState = gameState;
}

GameState GameManager::getGameState()
{
	return this->gameState;
}