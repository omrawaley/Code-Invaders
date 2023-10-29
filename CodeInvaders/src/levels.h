#pragma once

#include <iostream>

#include "level.h"

namespace Levels
{
	namespace Level1
	{
		constexpr size_t size = 90;
		constexpr size_t rows = 6;

		static int layout[size] = 
		{
			2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
			1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
			1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1,
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
			1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
		};

		const Level level = Level(layout, size, rows);
	};

	namespace Level2
	{
		constexpr size_t size = 90;
		constexpr size_t rows = 6;

		static int layout[size] = 
		{
			2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
			1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
		};

		const Level level = Level(layout, size, rows);
	};

	namespace Level3
	{
		constexpr size_t size = 78;
		constexpr size_t rows = 6;

		static int layout[size] = 
		{
			2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
			0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
			1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
		};

		const Level level = Level(layout, size, rows);
	};

	const Level allLevels[] = 
	{
		Level1::level,
		Level2::level,
		Level3::level,
	};

	constexpr size_t totalLevels = sizeof(allLevels) / sizeof(allLevels[0]);

	constexpr int firstLevel = 0;
	constexpr int lastLevel = totalLevels - 1;
};