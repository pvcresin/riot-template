list
	div
		h2 list.tag
		ul
			li(each='{item, index in opts.memos}') {index}: {item}

	style.
		:scope > div {
			background: white;
			padding: 1rem;
			margin-top: 1rem;
		}

	script.
		this.on('mount', () => {
			console.log(this.opts)
		})