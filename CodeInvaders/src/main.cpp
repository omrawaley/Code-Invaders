#include <SFML/System.hpp>
#include <SFML/Graphics.hpp>
#include <SFML/Window.hpp>

#include <iostream>
#include <vector>

#include "constants.h"
#include "player.h"
#include "levelManager.h"
#include "gameManager.h"

int main()
{
	sf::RenderWindow window(sf::VideoMode(constants::windowWidth, constants::windowHeight), "Code Invaders", sf::Style::Titlebar | sf::Style::Close);
	window.setFramerateLimit(60);
	window.setKeyRepeatEnabled(false);

	sf::Texture spaceTexture;
	spaceTexture.loadFromFile("textures/space.jpg");

	sf::Sprite background(spaceTexture);

	sf::Texture deathStarTexture;
	deathStarTexture.loadFromFile("textures/deathstar.png");

	sf::Font titleFont;
	titleFont.loadFromFile("fonts/Source_Code_Pro/static/SourceCodePro-Light.ttf");

	sf::Sprite deathStar(deathStarTexture);
	deathStar.setPosition(sf::Vector2f(constants::windowWidth - 200, constants::windowHeight - 205));

	sf::Text titleText;
	titleText.setFont(titleFont);
	titleText.setCharacterSize(constants::titleFontSize);
	titleText.setString("CodeInvaders");
	titleText.setFillColor(sf::Color(21, 210, 25, 255));
	titleText.setPosition((constants::windowWidth - titleText.getLocalBounds().width) / 2, constants::titleY);

	sf::Text gameOverText;
	gameOverText.setFont(titleFont);
	gameOverText.setCharacterSize(constants::titleFontSize);
	gameOverText.setString("Game Over!");
	gameOverText.setFillColor(sf::Color(21, 210, 25, 255));
	gameOverText.setPosition((constants::windowWidth - gameOverText.getLocalBounds().width) / 2, constants::titleY);

	sf::Text winText;
	winText.setFont(titleFont);
	winText.setCharacterSize(constants::titleFontSize);
	winText.setString("You Won!");
	winText.setFillColor(sf::Color(21, 210, 25, 255));
	winText.setPosition((constants::windowWidth - winText.getLocalBounds().width) / 2, constants::titleY);

	sf::Text finalScoreText;
	finalScoreText.setFont(titleFont);
	finalScoreText.setCharacterSize(constants::titleFontSize);
	finalScoreText.setFillColor(sf::Color(21, 210, 25, 255));

	sf::Text gameScoreText;
	gameScoreText.setFont(titleFont);
	gameScoreText.setCharacterSize(30);
	gameScoreText.setFillColor(sf::Color(21, 210, 25, 255));
	gameScoreText.setPosition(10, 10);

	Player player = Player();

	LevelManager levelManager;

	while(window.isOpen())
	{
		sf::Event event;

		while(window.pollEvent(event))
		{
			if(event.type == sf::Event::Closed || sf::Keyboard::isKeyPressed(sf::Keyboard::Escape))
			{
				window.close();
			}

			if(event.type == sf::Event::KeyPressed)
			{
				if(event.key.code == sf::Keyboard::Enter && gameManager.getGameState() == GameState::Title)
				{
					player.reset();

					gameManager.setGameState(GameState::Game);

					if(!gameManager.getGameOver())
					{
						levelManager.loadNextLevel();
					}
					else
					{
						levelManager.loadLevel(Levels::Level1::level);

						gameManager.setGameOver(false);

						gameManager.resetScore();
					}
				}
			}

			if(event.type == sf::Event::KeyPressed)
			{
				if(event.key.code == sf::Keyboard::Enter && (gameManager.getGameState() == GameState::GameOver || gameManager.getGameState() == GameState::Win))
				{
					gameManager.setGameState(GameState::Title);
				}
			}
		}

		window.clear(sf::Color::Black);

		switch(gameManager.getGameState())
		{
			case GameState::Title:
				window.draw(background);

				window.draw(titleText);
				break;

			case GameState::Game:
				window.draw(background);

				//window.draw(deathStar);

				player.movePlayer();

				player.shootBullet();

				player.draw(&window);

				for(int i = 0; i < player.bullets.size(); ++i)
				{
					player.bullets.at(i).draw(&window);

					player.bullets.at(i).moveBullet();

					if(!player.bullets.at(i).getActive() == true)
					{
						player.bullets.erase(player.bullets.begin() + i);
					}
				}

				for(int i = 0; i < levelManager.enemyManager.enemies.size(); ++i)
				{
					if(levelManager.enemyManager.enemies.at(i).getActive())
					{
						if(levelManager.enemyManager.enemies.at(i).y >= constants::windowHeight - 150)
						{
							gameManager.setGameState(GameState::GameOver);
						}

						for(int j = 0; j < player.bullets.size(); ++j)
						{
							if(gameManager.collide(player.bullets.at(j).x, player.bullets.at(j).y, constants::bulletWidth, constants::bulletHeight, levelManager.enemyManager.enemies.at(i).x, levelManager.enemyManager.enemies.at(i).y, 30, 32))
							{
								switch(levelManager.enemyManager.enemies.at(i).type)
								{
									case EnemyType::Python:
										gameManager.increaseScore(10);
										break;

									case EnemyType::Javascript:
										gameManager.increaseScore(15);
										break;

									case EnemyType::Java:
										gameManager.increaseScore(20);
										break;

									case EnemyType::Empty:
										break;
								}

								levelManager.enemyManager.enemies.at(i).setActive(false);
								player.bullets.at(j).setActive(false);

								++levelManager.enemyManager.inactiveEnemies;
							}
						}
					}

					if(levelManager.enemyManager.inactiveEnemies == levelManager.enemyManager.enemies.size())
					{
						gameManager.setGameState(GameState::Win);
					}
				}

				gameScoreText.setString("Score: " + std::to_string(gameManager.getScore()));

				window.draw(gameScoreText);

				levelManager.moveEnemies();

				levelManager.drawEnemies(&window);
				break;

			case GameState::GameOver:
				window.draw(background);
				window.draw(gameOverText);
				gameManager.setGameOver(true);
				finalScoreText.setString("Your Score: " + std::to_string(gameManager.getScore()));
				finalScoreText.setPosition((constants::windowWidth - finalScoreText.getLocalBounds().width) / 2, constants::finalScoreY);
				window.draw(finalScoreText);
				break;

			case GameState::Win:
				window.draw(background);
				window.draw(winText);
				finalScoreText.setString("Your Score: " + std::to_string(gameManager.getScore()));
				finalScoreText.setPosition((constants::windowWidth - finalScoreText.getLocalBounds().width) / 2, constants::finalScoreY);
				window.draw(finalScoreText);
				break;
		}

		window.display();
	}

	return 0;
}