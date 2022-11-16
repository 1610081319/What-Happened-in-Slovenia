onEvent('item.registry', event => {
	event.create('example_item').glow(true).unstackable()
})