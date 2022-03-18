<script lang="ts">
	let additionalClasses = '';
	let variant,
		link,
		text,
		target = '';

	export { additionalClasses as class, variant, link, text, target };
</script>

<a
	href={link}
	role="button"
	{target}
	class="px-3 py-2 rounded-md {additionalClasses} {variant === 'primary'
		? 'bg-black hover:bg-black text-white focus:outline-none focus:ring-4 focus:ring-offset-black transition-all'
		: 'bg-gray-200 hover:bg-gray-100 text-black focus:outline-none focus:ring-4 focus:ring-offset-gray transition-all'}"
	>{text}</a
>
