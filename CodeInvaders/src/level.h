#pragma once

#include <iostream>

class Level
{
	public:

		size_t size;

		size_t rows;

		int *layout;

	public:

		Level(int *layout, size_t size, size_t rows) : layout(layout), size(size), rows(rows)
		{

		}
};