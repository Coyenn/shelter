<script>
	import { Meta, Template, Story } from '@storybook/addon-svelte-csf';
	import Button from './Button.svelte';
</script>

<Meta title="Control/Button" component={Button} />

<Template let:args>
	<Button {...args} />
</Template>

<Story
	name="Primary"
	args={{ variant: 'primary', text: 'Primary', link: 'https://www.google.com', target: '_blank' }}
/>
<Story
	name="Secondary"
	args={{
		variant: 'secondary',
		text: 'Secondary',
		link: 'https://www.google.com',
		target: '_blank'
	}}
/>
