import adapter from '@sveltejs/adapter-netlify';
import { sveltekit } from '@sveltejs/kit/vite';
import { defineConfig } from 'vite';

export default defineConfig({
	plugins: [
		sveltekit({
			compilerOptions: {
				// Runes-Modus für das Projekt erzwingen (ausser Libraries)
				runes: ({ filename }) =>
					filename.split(/[/\\]/).includes('node_modules') ? undefined : true
			},
			// Deployment auf Netlify (gemäss Tutorial SW7)
			adapter: adapter({
				edge: false,
				split: false,
				publish: 'build'
			})
		})
	]
});
