<script>
	import favicon from '#lib/assets/favicon.svg';

	let { children } = $props();
</script>

<svelte:head>
	<link rel="icon" href={favicon} />
</svelte:head>

<div class="container mt-3">
	<nav>
		<!-- TODO -->
	</nav>
	<div class="container mt-3">
		{@render children()}
	</div>
</div>
