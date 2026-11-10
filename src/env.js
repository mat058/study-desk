import { defineEnvVars } from '@sveltejs/kit/env';

// Umgebungsvariablen (Werte stehen in .env bzw. in den Netlify-Settings)
export const variables = defineEnvVars({
	DB_URI: {}
});
