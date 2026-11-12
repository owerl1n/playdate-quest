#include "scene_manager.h"
#include <stddef.h>

static const AppScene* s_current = NULL;
static const AppScene* s_pending = NULL;

void app_scene_switch(const AppScene* next)
{
	s_pending = next;
}

void app_scene_update(void)
{
	if (s_pending)
	{
		if (s_current && s_current->exit)
			s_current->exit();
		s_current = s_pending;
		s_pending = NULL;
		if (s_current->enter)
			s_current->enter();
	}
	if (s_current && s_current->update)
		s_current->update();
}