<script context="module" lang="ts">
	export const prerender = true;

	import Button from '$components/control/button/Button.svelte';
</script>

<svelte:head>
	<title>Home</title>
</svelte:head>

<section>
	<h1 class="text-2xl">Test</h1>
	<div class="flex">
		<Button variant="primary" text="Login" link="#" class="mr-2" />
		<Button variant="secondary" text="Sign-Up" link="#" />
	</div>
</section>
